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
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="/css/amazeui.min.css">
    <link rel="stylesheet" href="/css/app.css">
</head>

<body>
<#include "header.ftl"/>

<!-- Post Content    col-lg-8 offset-lg-2 col-md-10 offset-md-1  -->
<article>
    <div class="am-g am-g-fixed blog-fixed blog-content">
        <div class="am-u-sm-12">
            <h1 class="blog-text-center">-- 存档 --</h1>

        <#list archivesList as archives>
            <div class="timeline-year">
                <h1>${archives.year}</h1>
                <hr>
                <ul>
                    <h3>1月</h3>
                    <hr>

                    <#list archives.datas as blog>
                        <li>
                            <span class="am-u-sm-4 am-u-md-2 timeline-span">${blog.createtime ?date}</span>
                            <span class="am-u-sm-8 am-u-md-6"><a href="/blog/${blog.url}">${blog.title}</a></span>
                            <span class="am-u-sm-4 am-u-md-2 am-hide-sm-only">暂无分类</span>
                            <span class="am-u-sm-4 am-u-md-2 am-hide-sm-only">${blog.auth}</span>
                        </li>
                    </#list>
                </ul>
                <br>
            </div>
        </#list>
        </div>
</article>

<#include "footer.ftl"/>

</body>

<script src="/js/jquery.min.js"></script>
<script src="/js/amazeui.min.js"></script>

</html>
