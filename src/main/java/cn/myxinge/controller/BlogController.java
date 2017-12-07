package cn.myxinge.controller;

import cn.myxinge.entity.Blog;
import cn.myxinge.service.BlogService;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * Created by chenxinghua on 2017/11/9.
 */
@Controller
public class BlogController {
    @Autowired
    private BlogService blogService;

    @RequestMapping("/blog/{url}")
    public String showBlog(@PathVariable String url, Model model) throws UnsupportedEncodingException {
        Blog blog = blogService.getBlog(url);
        model.addAttribute("blog", blog);
        return "blog";
    }

    @RequestMapping("/blog/content")
    @ResponseBody
    public String content(Model model,String sysyUrl) throws UnsupportedEncodingException {
        if(sysyUrl == null){return null;}
        String content = blogService.getBlogContent(sysyUrl);
        return new String(content.getBytes("ISO-8859-1"),"UTF-8");
    }

    @RequestMapping("/")
    public String indexBlog(Model model,Integer page,Integer rows) {
        JSONObject json = pageBlog(null,1,5);
        Object eval = JSONPath.eval(json, "$.total");
        Object content = JSONPath.eval(json, "$.rows");
        if(null != eval){
            model.addAttribute("total",Long.parseLong(String.valueOf(eval)));
        }
        if(null != content){
            if(content instanceof JSONArray){
                model.addAttribute("blogs",JSONArray.parseArray(String.valueOf(content),Blog.class));
            }
        }
        return "show";
    }

    @RequestMapping("/blog/pe/{page}")
    public JSONObject pageBlog(Blog blog,@PathVariable Integer page,Integer rows) {
        if(null == page){page = 1;}
        if(null == rows){rows = 5;}
        JSONObject json = blogService.pageBlog(page, rows);
        return json;
    }
}
