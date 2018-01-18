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
    <link type="text/css" rel="stylesheet" href="/css/show_css.css"/>
    <link rel="stylesheet" href="/css/editormd.preview.css"/>
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
            <div class="day">
                <div class="dayTitle">
                    <a href="#">${blog.createtime ?string('yyyy年MM月dd日')}</a>
                </div>

                <div class="postTitle">
                    <a class="postTitle2" href="/blog/${blog.url}">${blog.title}</a>
                   <#-- <img src="https://www.myxinge.cn/${blog.mainImgUrl}" style="width: 100px;height: 100px;"
                         class="am-img-thumbnail am-radius am-img-responsive am-align-right"
                         alt="">-->
                </div>
                <div class="postCon">
                    <div class="c_b_p_desc">
                        ${blog.subject}
                        <a href="/blog/${blog.url}"
                           class="c_b_p_desc_readmore" style="color: #3399ff">阅读全文</a></div>
                </div>
                <div class="clear"></div>
                <div class="postDesc">posted @ ${blog.createtime ?string('yyyy-MM-dd HH:mm:ss')} ${blog.auth} 阅读(12) 评论(0) </div>
                <div class="clear"></div>
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
        <!-- content end -->
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

        <div class="blog-clear-margin blog-sidebar-widget blog-bor am-g ">
            <h2 class="blog-title"><span>To you</span></h2>
            <div>
                <a href="javascript:void(0);" target="_blank">
                    <div class="am-panel am-panel-danger" data-am-scrollspy="{animation: 'fade'}"
                         style="text-align: left">

                        <div class="am-panel-hd" style="text-align: center">
                            <b>网站公告</b>
                        </div>
                        <div class="am-panel-bd">
                            <p>网站尚在开发，用户信息支持注册修改，搜索功能未实现，页面加载速度尚在优化，欢迎评论留言。</p>
                            <p align="right">更新时间：2017-12-31 23:59</p>
                        </div>
                    </div>
                </a>
            </div>
        </div>

        <div class="blog-sidebar-widget blog-bor">
            <h2 class="blog-text-center blog-title"><span>Github Repositories</span></h2>
            <div>
                <div class="am-panel am-panel-primary">
                    <div class="am-panel-hd">
                        <b>boot-demo</b>
                    </div>
                    <div class="am-panel-bd">
                        <a href="https://github.com/xingchen0085/boot-demo" target="_blank">
                            <p class="card-description"><b>Springboot学习demo</b></p>
                        </a>
                        <div class="card-footer">
                            <span style="padding: 0 20px"><i class="fa fa-star"></i>8</span>
                            <span style="padding: 0 10px"><i class="fa fa-code-fork"></i>3</span>
                            <span style="padding: 0 10px"><i class="fa fa-clock-o"></i>2018-1-4</span>
                        </div>
                    </div>
                </div>
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

<#include "footer.ftl"/>

<script src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/zoomFontSize.js"></script>
<script src="/js/amazeui.min.js"></script>
</body>
</html>