package cn.myxinge.utils;

import com.alibaba.fastjson.JSONObject;
import org.springframework.data.domain.Example;
import redis.clients.jedis.Jedis;

import java.lang.reflect.Method;
import java.lang.reflect.Parameter;

/**
 * Created by XingChen on 2017/12/10.
 *
 * Redis key 生成规则：根据 类+方法+形参数据（用+号连接）
 *
 * 操作Redis
 */
public class JedisUtil {
    private static Jedis jedis = null;
    static {
        jedis = new Jedis("127.0.0.1",6379);
    }

    /**缓存*/
    public static String cachData(String key,String value) throws Exception{
        String rtn = null;
        try {
            rtn = jedis.set(key, value);
        } catch (Exception e) {
            throw e;
        }
        return rtn;
    }

    /**取出*/
    public static String getDataFromRedis(String key)throws Exception{
        String rtn = null;
        try {
            rtn = jedis.get(key);
        } catch (Exception e) {
            throw e;
        }
        return rtn;
    }
}








