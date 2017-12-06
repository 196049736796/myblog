package cn.myxinge.service.impl;

import cn.myxinge.entity.Blog;
import cn.myxinge.service.BlogService;
import cn.myxinge.utils.HttpClientUtil;
import com.alibaba.fastjson.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by chenxinghua on 2017/11/9.
 */
@Service
public class BlogServiceImpl implements BlogService {

    private Logger LOG = LoggerFactory.getLogger(BlogServiceImpl.class);

    //根据Url返回博客对象
    @Value("${url_blogByUrl}")
    private String url_blogByUrl;

    @Value("${url_blogPage}")
    private String url_blogPage;

    @Override
    public Blog getBlog(String url) {

        String _url = url_blogByUrl.replace("*url*", url);
        String rtn = HttpClientUtil.get(_url);
        if (rtn == null) {
            LOG.error("博客不存在，或者后台系统出错");
            return null;
        }

        Blog blog = null;
        try {
            blog = JSONObject.parseObject(rtn, Blog.class);
        } catch (Exception e) {
            LOG.error("博客不存在，或者后台系统出错", e);
        }

        return blog;
    }

    @Override
    public List<Blog> allBlog() {
        return null;
    }

    @Override
    public String getBlogContent(String sysyUrl) {
        String pre = "http://119.23.62.228/";
        return HttpClientUtil.get(pre + sysyUrl);
    }

    @Override
    public JSONObject pageBlog(int page, int rows) {
        String rtn = HttpClientUtil.get(url_blogPage + "?page=" + page + "&rows=" + rows);
        try {
            JSONObject json = JSONObject.parseObject(rtn);

            return json;
        } catch (Exception e) {
            LOG.error("无法查到数据 或者返回的数据不是json", e);
        }
        return null;
    }
}












