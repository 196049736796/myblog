package cn.myxinge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by chenxinghua on 2017/11/17.
 */
@Controller
@RequestMapping("/p")
public class PageControllrt {
    @RequestMapping("/{page}")
    public String page(@PathVariable String page){
        return page;
    }
}
