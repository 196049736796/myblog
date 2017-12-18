package cn.myxinge.common.intercepter;

import cn.myxinge.utils.HttpClientUtil;
import cn.myxinge.utils.UnicodeUtil;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by chenxinghua on 2017/11/24.
 * 拦截器 拦截请求，获取请求者IP地址
 */
public class MyIntercepterHandler implements HandlerInterceptor {

    private String url_ipSave;

    MyIntercepterHandler() {
        System.out.println("init..");
        this.url_ipSave = "http://127.0.0.1:8081/admin/visit/save";
    }

    private Logger LOG = LoggerFactory.getLogger(MyIntercepterHandler.class);

    //进入前
    @Override
    public boolean preHandle(final HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        LOG.info("Request: " + httpServletRequest.getRequestURL());

        //存入session||检查session中是否存在
        String visitIp = (String) httpServletRequest.getSession().getAttribute("visitIp");
        if (null == visitIp) {                                                                  //当session过期后才记录IP信息

            final JSONObject result = getIp(httpServletRequest);
            if (null == result) {
                return true;
            }
            LOG.info("IP:" + result.toJSONString());
            httpServletRequest.getSession().setAttribute("visitIp", result.toJSONString());

            Thread thread = new Thread(new Runnable() {                                         //开启线程，即时失败也要响应客户端
                @Override
                public void run() {

                    String address = result.getString("cname");
                    String ip = result.getString("cip");
                    Date visittime = new Date();

                    Map data = new HashMap<String, String>();
                    data.put("address", address);
                    data.put("ip", ip);
                    data.put("visittime", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(visittime));
                    String rtn = HttpClientUtil.post(url_ipSave, data, "utf-8");
                    if (rtn == null || !rtn.contains("success")) {
                        LOG.error("IP保存/更新出错: IP = " + ip);
                    }
                }
            });
            thread.start();
            LOG.info("开启一条线程存储IP -> " + thread.getName());
        }

        return true;
    }

    //controller之后
    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    //响应后
    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }

    /**
     * IP地址
     *
     * @param request
     * @return
     */
    private JSONObject getIp(HttpServletRequest request) {
        //获取本机外网IP
        String rtn = HttpClientUtil.get("https://ipip.yy.com/get_ip_info.php");
        if (rtn != null && rtn.contains("{") && rtn.contains("}")) {
            int start = rtn.indexOf("{");
            int end = rtn.indexOf("}") + 1;
            String result = rtn.substring(start, end);
            JSONObject Ipaddress = JSONObject.parseObject(result);
            return Ipaddress;
        } else {
            LOG.error("https://ipip.yy.com/get_ip_info.php --> IP查询有误");
        }
        return null;
    }
}














