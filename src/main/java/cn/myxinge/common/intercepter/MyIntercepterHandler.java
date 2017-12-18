package cn.myxinge.common.intercepter;

import cn.myxinge.utils.HttpClientUtil;
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
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        LOG.info("Request: " + httpServletRequest.getRequestURL());

        final String ip = getIp(httpServletRequest);

        //存入session||检查session中是否存在
        String visitIp = (String) httpServletRequest.getSession().getAttribute("visitIp");
        if (null == visitIp) {
            httpServletRequest.getSession().setAttribute("visitIp", ip);

            Thread thread = new Thread(new Runnable() {
                @Override
                public void run() {
                    String address = getAdress(ip);
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
    private String getIp(HttpServletRequest request) {
        String ipAddress = request.getHeader("x-forwarded-for");
        if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getHeader("Proxy-Client-IP");
        }
        if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getRemoteAddr();
            if (ipAddress.equals("127.0.0.1") || ipAddress.equals("0:0:0:0:0:0:0:1")) {
                //根据网卡取本机配置的IP
//                InetAddress inet=null;
//                try {
//                    inet = InetAddress.getLocalHost();
//                } catch (UnknownHostException e) {
//                    e.printStackTrace();
//                }
//                ipAddress= inet.getHostAddress();
                //获取本机外网IP
                String rtn = HttpClientUtil.get("http://2017.ip138.com/ic.asp");
                if (rtn != null && rtn.contains("[") && rtn.contains("]")) {
                    int s = rtn.indexOf("[");
                    int e = rtn.indexOf("]");

                    return rtn.substring(s + 1, e);
                } else {
                    LOG.error("http://2017.ip138.com/ic.asp --> 地址无法查询IP");
                }
            }
        }
        //对于通过多个代理的情况，第一个IP为客户端真实IP,多个IP按照','分割
        if (ipAddress != null && ipAddress.length() > 15) { //"***.***.***.***".length() = 15
            if (ipAddress.indexOf(",") > 0) {
                ipAddress = ipAddress.substring(0, ipAddress.indexOf(","));
            }
        }
        return ipAddress;
    }

    /**
     * IP地址
     */
    private String getAdress(String ip) {
        JSONObject address = null;
        //IP地址
        try {
            String rtn = HttpClientUtil.get("http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=json&ip=" + ip);
            address = JSONObject.parseObject(rtn);

            String country = (String) JSONPath.eval(address, "$.country");
            String province = (String) JSONPath.eval(address, "$.province");
            String city = (String) JSONPath.eval(address, "$.city");

            return country + "." + province + "." + city;

        } catch (Exception e) {
            LOG.error("IP解析错误:IP = " + ip);
        }

        return "该IP解析失败";

    }
}














