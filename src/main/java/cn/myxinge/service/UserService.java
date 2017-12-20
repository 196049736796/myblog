package cn.myxinge.service;

import cn.myxinge.entity.User;
import com.alibaba.fastjson.JSONObject;

/**
 * Created by XingChen on 2017/12/20.
 */
public interface UserService {
    public String reg(User user);

    public String log(User user);
}
