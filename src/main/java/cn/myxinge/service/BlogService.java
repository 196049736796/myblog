package cn.myxinge.service;

import cn.myxinge.entity.Blog;

import java.util.List;

/**
 * Created by chenxinghua on 2017/11/9.
 */
public interface BlogService {
    /**
     * 创建博客
     * @param blog
     */
    void create(Blog blog);

    /**
     * 根据url获取博客
     * @param url
     * @return
     */
    Blog getBlog(String url);

    /**
     * 获取所有博客
     * @return
     */
    List<Blog> allBlog();

    /**
     * 获取最新博客  n 篇
     */
    List<Blog> newerBlog(int n);

    String getBlogContent(String sysyUrl);
}
















