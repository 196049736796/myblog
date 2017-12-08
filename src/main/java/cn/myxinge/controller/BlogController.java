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

import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by chenxinghua on 2017/11/9.
 */
@Controller
public class BlogController {
    @Autowired
    private BlogService blogService;

    @RequestMapping("/blog/{url}")
    public String showBlog(@PathVariable String url, Model model, HttpServletResponse rps) throws UnsupportedEncodingException {
        Blog blog = blogService.getBlog(url);
        if(null == blog){
            rps.setStatus(404);
            return "/error";
        }
        model.addAttribute("blog", blog);
        return "blog";
    }

    @RequestMapping("/blog/content")
    @ResponseBody
    public String content(Model model, String sysyUrl) throws UnsupportedEncodingException {
        if (sysyUrl == null) {
            return null;
        }
        String content = blogService.getBlogContent(sysyUrl);
        return new String(content.getBytes("ISO-8859-1"), "UTF-8");
    }

    @RequestMapping("/")
    public String indexBlog(Model model) {
        return pageHandler(model, 1, 5);
    }

    @RequestMapping("blog/pe/{page}")
    public String pageHandler(Model model, @PathVariable Integer page, Integer rows) {
        if (null == page) {
            page = 1;
        }
        if (null == rows) {
            rows = 5;
        }

        JSONObject json = pageBlog(null, page, rows);
        Long eval = Long.parseLong(String.valueOf(JSONPath.eval(json, "$.total")));
        Object content = JSONPath.eval(json, "$.rows");
        if (null != eval) {
            model.addAttribute("total", eval);
        }
        if (null != content) {
            if (content instanceof JSONArray) {
                if (((JSONArray) content).size() != 0) {
                    List<Blog> blogs = JSONArray.parseArray(String.valueOf(content), Blog.class);
                    model.addAttribute("blogs", blogs);
                } else {
                    model.addAttribute("blogs", new ArrayList<>());
                }
            }
        }
        //当前页
        model.addAttribute("curPage", page);
        //最大页
        Long totalPage = eval % rows == 0 ? eval / rows : (eval / rows) + 1;
        model.addAttribute("totalPage", totalPage);

        return "show";
    }


    private JSONObject pageBlog(Blog blog, @PathVariable Integer page, Integer rows) {

        JSONObject json = blogService.pageBlog(page, rows);
        return json;
    }
}
