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

<body id="blog" class="chang_fontSize">

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
                <div class="am-u-lg-8 am-u-md-8 am-u-sm-8">
                    <h2><a href="/blog/${blog.url}">${blog.title}</a></h2>
                    <p style="font-size:small;word-break:break-all;">
                    ${blog.subject}
                    </p>
                    <p style="font-size:small">
                        <span><a href="" class="blog-color">@Post by &nbsp;</a></span>
                        <span> ${blog.auth} &nbsp;</span>
                        <span>${blog.createtime ?string('yyyy-MM-dd HH:mm:ss')}</span>
                    </p>
                </div>

                <div class="am-u-lg-4 am-u-md-4 am-u-sm-4">
                    <img src="http://www.myxinge.cn/${blog.mainImgUrl}"
                         alt="" class="am-img-thumbnail am-radius am-img-responsive">
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
            <h2 class="blog-text-center blog-title"><span>My Repositories</span></h2>
            <div>
                <a href="javascript:void(0);" target="_blank">
                    <div class="am-panel am-panel-danger" data-am-scrollspy="{animation: 'fade'}"
                         style="text-align: left">

                        <div class="am-panel-hd" style="text-align: center">
                            <b>公告</b>
                        </div>
                        <div class="am-panel-bd">
                            <p>网站尚在开发，用户信息支持注册修改，搜索功能未实现，页面加载速度尚在优化，欢迎评论留言。</p>
                            <p align="right">更新时间：2017-12-31 23:59</p>
                        </div>
                    </div>
                </a>
            </div>

            <div>
                <a href="https://github.com/xingchen0085/boot-demo" target="_blank">
                    <div class="am-panel am-panel-primary" data-am-scrollspy="{animation: 'fade'}">

                        <div class="am-panel-hd">
                            boot-demo
                        </div>
                        <div class="am-panel-bd">
                            SpringBoot入门使用
                        </div>
                    </div>
                </a>
            </div>
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
<script type="text/javascript" src="/js/zoomFontSize.js"></script>
<script src="/js/amazeui.min.js"></script>
</body>
</html>