package cn.myxinge.controller;

import cn.myxinge.entity.Blog;
import cn.myxinge.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by chenxinghua on 2017/11/9.
 */
@Controller
public class BlogController {
    @Autowired
    private BlogService blogService;

    @RequestMapping("/blog/{url}")
    public String showBlog(@PathVariable String url, Model model) {
        Blog blog = blogService.getBlog(url);
        model.addAttribute("blog", blog);
        return "blog";
    }

    @RequestMapping("/")
    public String allBlog(Model model) {
        List<Blog> newerBlog = blogService.newerBlog(6);

        model.addAttribute("blogs", newerBlog);
        return "show";
    }

  /*  @RequestMapping("/error")
    public String toError(){
        return "error";
    }*/
}
