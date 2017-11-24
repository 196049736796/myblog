package cn.myxinge.controller;

import cn.myxinge.service.BoardMsgService;
import com.alibaba.fastjson.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by chenxinghua on 2017/11/23.
 */
@RestController
public class BoardMsgController {

    private Logger LOG = LoggerFactory.getLogger(BoardMsgController.class);

    @Autowired
    private BoardMsgService boardMsgService;

    @RequestMapping("/sendMessage")
    public JSONObject sendMsg(String name,String email,String msg){
        JSONObject rtnJson = null;
        try {
            JSONObject json = new JSONObject();
            json.put("name",name);
            json.put("email",email);
            json.put("msg",msg);
            String rtn = boardMsgService.save(json);
            rtnJson = JSONObject.parseObject(rtn);

        } catch (Exception e) {
            LOG.error("留言存储异常",e);
            return rtnJson;
        }
        return rtnJson;
    }
}









