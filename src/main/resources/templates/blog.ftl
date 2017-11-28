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
</head>

<body>
<#include "header.ftl"/>

<!-- Page Header -->

<!-- Post Content    col-lg-8 offset-lg-2 col-md-10 offset-md-1  -->
<article>
    <!-- content srart -->
    <div class="am-g am-g-fixed blog-fixed blog-content">
        <div class="am-u-sm-12">
            <article class="am-article blog-article-p">
                <div class="am-article-hd">
                    <h1 class="am-article-title blog-text-center">${blog.title}</h1>
                    <p class="am-article-meta blog-text-center">
                        <span><a href="#" class="blog-color">@Post by &nbsp;</a></span>-
                        <span><a href="#">${blog.auth}  &nbsp;</a></span>-
                        <span><a href="#">${blog.createtime ?string('yyyy-MM-dd HH:mm:ss')}</a></span>
                    </p>
                    <hr/>
                </div>

                <div class="am-article-bd">
                    <img style="width: 100%;height: 500px" src="/images/17.jpg" alt="" class="blog-entry-img blog-article-margin">
                    <iframe id="Iframe" src="http://119.23.62.228/${blog.sysyUrl}" width="100%" frameborder="0"
                            height="auto"
                            scrolling="no"></iframe>
                </div>
            </article>

            <#-----------------------------------------------文章结束-->
            <div class="am-g blog-article-widget blog-article-margin">
                <div class="am-u-lg-4 am-u-md-5 am-u-sm-7 am-u-sm-centered blog-text-center">
                    <span class="am-icon-tags"> &nbsp;</span><a href="#">标签</a> , <a href="#">TAG</a> , <a href="#">啦啦</a>
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
                <li class="am-pagination-prev"><a href="#" class="">&laquo; 一切的回顾</a></li>
                <li class="am-pagination-next"><a href="">不远的未来 &raquo;</a></li>
            </ul>
        </div>
    </div>
</article>

<#include "footer.ftl"/>

<script type="text/javascript">
    window.onload = function () {
        window.addEventListener('message', function (event) {
            if (event.origin === "http://www.myxinge.cn") {
                document.getElementById("Iframe").style.height = event.data + "px";
            }
        }, false);
    }
</script>

</body>

<script src="/js/jquery.min.js"></script>
<script src="/js/amazeui.min.js"></script>

</html>
