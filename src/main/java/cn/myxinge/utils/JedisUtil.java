package cn.myxinge.utils;

import com.alibaba.fastjson.JSONObject;
import redis.clients.jedis.Jedis;

import java.lang.reflect.Method;
import java.lang.reflect.Parameter;

/**
 * Created by XingChen on 2017/12/10.
 * 操作Redis
 */
public class JedisUtil {
    private static Jedis jedis = null;
    static {
        jedis = new Jedis();
    }
    public static String cachData(Object obj,Method method){
        JSONObject json = JSONObject.parseObject(obj.toString());
        String set = jedis.set(keyGengenty(method), json.toJSONString());
        return set;
    }

    /**
     * key的生成规则： 根据当前执行的类+方法+参数来生成
     * @return
     */
    private static String keyGengenty(Method method){
        String mName = method.getName();
        Parameter[] parameters = method.getParameters();
        StringBuffer sb = new StringBuffer();
        for(Parameter p : parameters){
            sb.append(p);
        }
        sb.append(mName);
        return sb.toString();
    }
}








