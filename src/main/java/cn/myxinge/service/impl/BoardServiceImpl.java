package cn.myxinge.service.impl;

import cn.myxinge.service.BoardMsgService;
import cn.myxinge.utils.HttpClientUtil;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * Created by chenxinghua on 2017/11/23.
 */
@Service
public class BoardServiceImpl implements BoardMsgService {

    @Value("${url_msgSave}")
    private String url_msgSave;

    @Override
    public String save(Map map) {
        String rtn = HttpClientUtil.post(url_msgSave, map, "utf-8");

        return rtn;
    }
}


