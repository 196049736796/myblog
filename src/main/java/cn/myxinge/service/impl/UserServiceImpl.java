package cn.myxinge.service.impl;

import cn.myxinge.entity.User;
import cn.myxinge.service.UserService;
import cn.myxinge.utils.HttpClientUtil;
import com.alibaba.fastjson.JSONObject;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by XingChen on 2017/12/20.
 */
@Service
public class UserServiceImpl implements UserService {
    @Value("${url_reg}")
    private String url_reg;

    @Value("${url_log}")
    private String url_log;

    @Override
    public String reg(User user) {

        //加密
        Md5Hash md5Hash = new Md5Hash(user.getPwd(), user.getEmail(), 2);

        //注册需要哪些信息？邮箱，密码
        Map<String, String> map = new HashMap<>();
        map.put("email", user.getEmail());
        map.put("pwd", md5Hash.toHex());
        map.put("name", user.getName());

        return HttpClientUtil.post(url_reg, map, "utf-8");
    }

    @Override
    public String log(User user) {
        return HttpClientUtil.get(url_log.concat("?email=").concat(user.getEmail()).concat("&pwd=").concat(user.getPwd()));
    }
}


