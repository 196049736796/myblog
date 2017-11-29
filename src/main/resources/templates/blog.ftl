<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Xingchen's Blog</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <meta name="msapplication-TileColor" content="#0e90d2">
    <link rel="stylesheet" href="/css/amazeui.min.css">
    <link rel="stylesheet" href="/css/app.css">
    <link rel="stylesheet" href="/css/my.css">
</head>

<body>
<#include "header.ftl"/>
<!-- Post Content    col-lg-8 offset-lg-2 col-md-10 offset-md-1  -->
<article>
    <!-- content srart -->
    <div class="am-g am-g-fixed blog-fixed blog-content">
        <div class="am-u-sm-12">
            <article class="am-article blog-article-p">
                <div class="am-article-hd">
                    <h1 class="am-article-title blog-text-center">${blog.title}</h1>
                    <p class="am-article-meta blog-text-center" style="font-size: smaller">
                        <span><a href="#" class="blog-color">@Post by &nbsp;</a></span>-
                        <span><a href="#">${blog.auth}  &nbsp;</a></span>-
                        <span><a href="#">${blog.createtime ?string('yyyy-MM-dd HH:mm:ss')}</a></span>
                    </p>
                </div>

                <div class="am-article-bd" id="mainContent">
                    <div id="img_content"><img id="b_img" style="width: 100%;height: auto;max-height: 500px" src="/images/22.jpg" alt="" class="blog-entry-img blog-article-margin"></div>
                    ${content}
                </div>
            </article>

            <hr>
            <div><a href="http://www.myxinge.cn/blog/${blog.url}">原文出自：星尘 www.myxinge.cn</a></div> 
            <#-----------------------------------------------文章结束-->
            <div class="am-g blog-article-widget blog-article-margin">
                <div class="am-u-lg-4 am-u-md-5 am-u-sm-7 am-u-sm-centered blog-text-center">
                    <span class="am-icon-tags"> &nbsp;</span><a href="#">Springboot</a> , <a href="#">Mybatis</a> , <a href="#">框架整合</a>
                    <hr>
                    <a href=""><span class="am-icon-qq am-icon-fw am-primary blog-icon"></span></a>
                    <a href=""><span class="am-icon-wechat am-icon-fw blog-icon"></span></a>
                    <a href=""><span class="am-icon-weibo am-icon-fw blog-icon"></span></a>
                </div>
            </div>

            <hr>
            <div class="am-g blog-author blog-article-margin">
                <div class="am-u-sm-3 am-u-md-3 am-u-lg-2">
                    <img src="/images/22.jpg" alt="" class="blog-author-img am-circle">
                </div>
                <div class="am-u-sm-9 am-u-md-9 am-u-lg-10">
                    <h3><span>作者 &nbsp;: &nbsp;</span><span class="blog-color">amazeui</span></h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
            </div>
            <hr>
            <ul class="am-pagination blog-article-margin">
                <li class="am-pagination-prev"><a href="#" class="">&laquo; 上一篇</a></li>
                <li class="am-pagination-next"><a href="">下一篇 &raquo;</a></li>
            </ul>

            <hr>

            <form class="am-form am-g">
                <h3 class="blog-comment">评论</h3>
                <fieldset>
                    <div class="am-form-group am-u-sm-4 blog-clear-left">
                        <input type="text" class="" placeholder="名字">
                    </div>
                    <div class="am-form-group am-u-sm-4">
                        <input type="email" class="" placeholder="邮箱">
                    </div>

                    <div class="am-form-group am-u-sm-4 blog-clear-right">
                        <input type="password" class="" placeholder="网站">
                    </div>

                    <div class="am-form-group">
                        <textarea class="" rows="5" placeholder="随便说点什么"></textarea>
                    </div>

                    <p><button type="submit" class="am-btn am-btn-default">发表评论</button></p>
                </fieldset>
            </form>

            <hr>
        </div>
    </div>
</article>

<div style="display:none;" class="back-to" id="toolBackTop">
    <a title="返回顶部" onclick="window.scrollTo(0,0);return false;" href="#top" class="back-top">
        返回顶部</a>
</div>

<#include "footer.ftl"/>


</body>

<script src="/js/jquery.min.js"></script>
<script src="/js/amazeui.min.js"></script>
<script src="/js/my.js"></script>
</html>
