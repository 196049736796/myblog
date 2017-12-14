<!doctype html>
<html>
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

<body id="blog">

<#include "header.ftl"/>

<!-- content srart -->
<div class="am-g am-g-fixed blog-fixed">
    <div class="am-u-md-8 am-u-sm-12">
    <#if blogs?size == 0>
        <div style="width: 100%;margin-top: 40px;margin-bottom: 50px">
            <hr>
            <h3 align="center">该页面暂无博客信息</h3>
            <hr>
        </div>
    <#else >
        <#list blogs as blog>
            <article class="am-g blog-entry-article">
                <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-img">
                    <img src="http://www.myxinge.cn/${blog.mainImgUrl}"
                         alt="" class="am-u-sm-12">
                </div>
                <div class="am-u-lg-6 am-u-md-12 am-u-sm-12 blog-entry-text">
                    <h1><a href="/blog/${blog.url}">${blog.title}</a></h1>
                    <p style="font-size:small">${blog.subject}</p>
                    <p style="font-size:small">
                    <span><a href="" class="blog-color">@Post by &nbsp;</a></span>
                    <span> ${blog.auth} &nbsp;</span>
                    <span>${blog.createtime ?string('yyyy-MM-dd HH:mm:ss')}</span>
                    </p>
                </div>
            </article>
        </#list>
        <ul class="am-pagination">
            <#if (curPage>1)>
                <li class="am-pagination-prev"><a href="/blog/pe/${curPage-1}">&laquo; 上一页</a></li>
            <#else >
                <li class="am-disabled" style="float: left;"><a href="">&laquo; 木有上一页</a></li>
            </#if>
            <#if (curPage<totalPage)>
                <li class="am-pagination-next"><a href="/blog/pe/${curPage+1}">下一页 &raquo;</a></li>
            <#else >
                <li class="am-disabled" style="float: right;"><a href="">木有下一页 &raquo;</a></li>
            </#if>
        </ul>
    </#if>
    </div>

    <div class="am-u-md-4 am-u-sm-12 blog-sidebar">
        <div class="blog-sidebar-widget blog-bor">
            <h2 class="blog-text-center blog-title"><span>Xingchen</span></h2>
            <img src="/images/03.png" alt="about me" class="blog-entry-img">
            <p><#--码农自我安慰--></p>
            <p>
                我的代码曾运行在几千万用户的机器上，作为一个程序员，还有什么比这更让人满足的呢？如果有，那就让这个用户数量再扩大 10 倍。
            </p>
        </div>
        <div class="blog-sidebar-widget blog-bor">
            <h2 class="blog-text-center blog-title"><span>Contact ME</span></h2>
            <p>
                <a href=""><span class="am-icon-qq am-icon-fw am-primary blog-icon"></span></a>
                <a href="https://github.com/xingchen0085/" target="_blank"><span
                        class="am-icon-github am-icon-fw blog-icon"></span></a>
                <a href="https://weibo.com/p/1005055313772543/home?from=page_100505&mod=TAB&is_all=1#place"><span
                        class="am-icon-weibo am-icon-fw blog-icon"></span></a>
                <a href=""><span class="am-icon-weixin am-icon-fw blog-icon"></span></a>
            </p>
        </div>
        <div class="blog-clear-margin blog-sidebar-widget blog-bor am-g ">
            <h2 class="blog-title"><span>TAG cloud</span></h2>
            <div class="am-u-sm-12 blog-clear-padding">
                <a href="" class="blog-tag">Java</a>
                <a href="" class="blog-tag">IT</a>
                <a href="" class="blog-tag">后台</a>
                <a href="" class="blog-tag">JavaEE</a>
                <a href="" class="blog-tag">Spring</a>
                <a href="" class="blog-tag">开源框架</a>
            </div>
        </div>
    </div>
</div>
<!-- content end -->


<#include "footer.ftl"/>

<script src="/js/jquery.min.js"></script>
<script src="/js/amazeui.min.js"></script>
</body>
</html>