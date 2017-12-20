package cn.myxinge.controller;

import cn.myxinge.entity.User;
import cn.myxinge.service.UserService;
import cn.myxinge.utils.HttpClientUtil;
import cn.myxinge.utils.ResponseUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by chenxinghua on 2017/12/20.
 * <p>
 * 处理用户认证  //暂用sessoin存储登录用户，过期时间为 ： 关闭浏览器
 */
@Controller
@RequestMapping("/u")
public class AuthController {

    @Autowired
    private UserService userService;

    private Logger LOG = LoggerFactory.getLogger(AuthController.class);

    @Value("${github_client_id}")
    private String github_client_id;
    @Value("${github_client_secret}")
    private String github_client_secret;
    @Value("${github_auth_token}")
    private String github_auth_token;
    @Value("${github_redirect_uri}")
    private String github_redirect_uri;
    @Value("${github_user_info}")
    private String github_user_info;

    @RequestMapping("/auth")
    public String code(String code, String state, HttpServletRequest request) {
        if (code == null) {
            return "/";
        }

        //url处理
        String url_token = github_auth_token.replace("*client_id*", github_client_id)
                .replace("*client_secret*", github_client_secret)
                .replace("*code*", code)
                .replace("*redirect_uri*", github_redirect_uri);

        //发起请求并处理
        String token = HttpClientUtil.get(url_token);

        //token 处理
        if (token != null && token.startsWith("access_token")) {
            int end = token.indexOf("&");
            if (end == -1) {
                token = token.substring(0, token.length() - 1);
            } else {
                token = token.substring(0, end);
            }
        } else {
            return "/";
        }

        //信息获取
        String userInfo = HttpClientUtil.get(github_user_info.concat("?").concat(token));
        if (userInfo == null) {
            return "/";
        }

        //数据处理
        User user = jsonHandler(userInfo);

        request.getSession().setAttribute("loginU", user);
        return "/";
    }

    @RequestMapping("/reg")
    @ResponseBody
    public JSONObject reg(User user, String repwd) {
        if (null != user) {
            if (StringUtils.isEmpty(user.getEmail())) {
                return ResponseUtil.returnJson(false, "require email");
            }
            if (StringUtils.isEmpty(user.getPwd())) {
                return ResponseUtil.returnJson(false, "require password");
            }
            if (StringUtils.isEmpty(repwd)) {
                if (!repwd.equals(user.getPwd())) {
                    return ResponseUtil.returnJson(false, "password is not same");
                }
            }
        }
        //发送请求
        String rtn = userService.reg(user);
        if (!rtn.equals("1")) {
            return ResponseUtil.returnJson(false, "system error");
        }

        return ResponseUtil.returnJson(true, "success");
    }

    @RequestMapping("/log")
    @ResponseBody
    public JSONObject log(User user, HttpServletRequest request) {
        try {
            if (null != user) {
                if (StringUtils.isEmpty(user.getEmail())) {
                    return ResponseUtil.returnJson(false, "require email");
                }
                if (StringUtils.isEmpty(user.getPwd())) {
                    return ResponseUtil.returnJson(false, "require password");
                }
            }

            //加密
            Md5Hash md5Hash = new Md5Hash(user.getPwd(), user.getEmail(), 2);

            user.setPwd(md5Hash.toHex());
            JSONObject rtnJson = JSONObject.parseObject(userService.log(user));
            User login = null;
            String msg = rtnJson.getString("success");
            if ("success".equals(msg)) {
                login = JSONObject.parseObject(rtnJson.getString("userInfo"), User.class);
            } else {
                return ResponseUtil.returnJson(false, msg);
            }

            request.getSession().setAttribute("loginU", login);

            return ResponseUtil.returnJson(true, "success");
        } catch (Exception e) {
            LOG.error("登录发生异常", e);
            return ResponseUtil.returnJson(false, "system error");
        }
    }


    private User jsonHandler(String userInfo) {
        User user = null;
        try {
            user = JSONObject.parseObject(userInfo, User.class);
        } catch (Exception e) {
            LOG.error(e.getMessage());
        }
        return user;
    }
}











