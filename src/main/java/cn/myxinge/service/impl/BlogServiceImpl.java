package cn.myxinge.service.impl;

import cn.myxinge.entity.Blog;
import cn.myxinge.service.BlogService;
import cn.myxinge.utils.HttpClientUtil;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by chenxinghua on 2017/11/9.
 */
@Service
public class BlogServiceImpl implements BlogService {


    //根据Url返回博客对象
    @Value("${url_blogByUrl}")
    private String url_blogByUrl;
    //最新6篇博客
    @Value("${url_newerBlog}")
    private String url_newerBlog;

    @Override
    public void create(Blog blog) {

    }

    @Override
    public Blog getBlog(String url) {

        String _url = url_blogByUrl.replace("*url*", url);
        String rtn = HttpClientUtil.get(_url);
        if (rtn == null) {
            throw new RuntimeException("后台处理失败或者博客不存在");
        }
        return JSONObject.parseObject(rtn,Blog.class);
    }

    @Override
    public List<Blog> allBlog() {
        return null;
    }

    @Override
    public List<Blog> newerBlog(int n) {

        String rtn = HttpClientUtil.get(url_newerBlog);
        if (rtn == null) {
            throw new RuntimeException("后台处理失败或者博客不存在");
        }
        return JSONArray.parseArray(rtn,Blog.class);
    }
}












