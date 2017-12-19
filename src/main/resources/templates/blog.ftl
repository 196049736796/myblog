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
    <link href="/css/style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="/css/amazeui.min.css">
    <link rel="stylesheet" href="/css/app.css">
    <link rel="stylesheet" type="text/css" href="/css/sinaFaceAndEffec.css"/>
    <link rel="stylesheet" href="/css/main.css"/>
    <link rel="stylesheet" href="/css/editormd.preview.css"/>
</head>

<body class="chang_fontSize">
<#include "header.ftl"/>

<!-- content srart -->
<div class="am-g am-g-fixed blog-fixed blog-content main">

    <div class="am-u-md-12 am-u-sm-12" style="margin-top: 30px">  <#--am-article-hd -->
        <h1 class="am-article-title blog-text-center">${blog.title}</h1>
        <p class="am-article-meta blog-text-center" style="font-size: smaller;margin-top: 15px">
            <span><a href="" class="blog-color">@Post by &nbsp;</a></span>-
            <span><a href="">${blog.auth}  &nbsp;</a></span>-
            <span><a href="">${blog.createtime ?string('yyyy-MM-dd HH:mm:ss')}</a></span>
        </p>
        <div style="width: 100%;margin: 20px" align="center">
            <hr style="width: 600px;">
        </div>
    </div>

    <div class="am-u-md-9 am-u-sm-12">
        <!-- Post Content    col-lg-8 offst-lg-2 col-md-10 offset-md-1  -->
        <article class="am-article">
            <!-- content srart -->
            <div class="am-g am-g-fixed blog-fixed blog-content">
                <div class="am-u-md-12 am-u-sm-12">
                    <article class="am-article blog-article-p">
                    <#--  src="http://www.myxinge.cn/${blog.mainImgUrl}"  -->
                        <div class="am-article-bd" id="mainContent">
                            <div id="img_content"><img id="b_img" style="width: 100%;height: auto;max-height: 500px"
                                                       src="/images/17.jpg" alt=""
                                                       class="blog-entry-img"></div>
                        </div>

                        <div id="layout">
                            <div id="test-editormd-view">
                        <textarea id="append-test" style="display:none;">
                        </textarea>
                            </div>
                        </div>
                    </article>

                    <hr>
                    <div align="left"><a href="http://www.myxinge.cn/blog/${blog.url}">原文出自：星尘 www.myxinge.cn</a></div>
                     
                <#-----------------------------------------------文章结束-->
                    <div class="am-g blog-article-widget blog-article-margin">
                        <div class="am-u-lg-4 am-u-md-5 am-u-sm-7 am-u-sm-centered blog-text-center">
                            <span class="am-icon-tags"> &nbsp;</span><a href="#">Springboot</a> , <a
                                href="#">Mybatis</a> , <a
                                href="#">框架整合</a>
                            <hr>
                            <a href=""><span class="am-icon-qq am-icon-fw am-primary blog-icon"></span></a>
                            <a href=""><span class="am-icon-wechat am-icon-fw blog-icon"></span></a>
                            <a href=""><span class="am-icon-weibo am-icon-fw blog-icon"></span></a>
                        </div>
                    </div>

                    <hr>
                    <ul class="am-pagination blog-article-margin">
                        <li class="am-pagination-prev">
                        <#if preBlog??>
                            <p style="font-size: smaller;color: blue">${preBlog.title!}</p>
                            <a href="/blog/${preBlog.url!}" class="">&laquo; 上一篇</a>
                        <#else>
                            <p>没有上一篇了</p>
                            <a disabled="disabled" class="am-btn am-btn-default am-disabled">&laquo; 上一篇</a>
                        </#if>
                        </li>
                        <li class="am-pagination-next">
                        <#if nextBlog??>
                            <p style="font-size: smaller;color: blue">${nextBlog.title!}</p>
                            <a href="/blog/${nextBlog.url!}">下一篇 &raquo;</a>
                        <#else>
                            <p>没有下一篇了</p>
                            <a disabled="disabled" class="am-btn am-btn-default am-disabled">下一篇 &raquo;</a>
                        </#if>
                        </li>
                    </ul>

                    <hr>

                    <h3>评论(99+)</h3>
                    <hr>
                    <div id="content" style="width: 100%; height: auto;margin-top: 15px">
                        <div class="wrap">
                            <div class="comment">
                                <div class="head-face">
                                    <img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/96/h/96/q/80"
                                         class="am-comment-avatar" width="48" height="48" / >
                                    <p>星尘</p>
                                </div>
                                <div class="content">
                                    <div class="cont-box">
                                        <textarea class="text" placeholder="写下你的评论"></textarea>
                                    </div>
                                    <div class="tools-box">
                                        <div class="operator-box-btn">
                                            <span class="face-icon">☺</span>
                                        </div>
                                        <div class="submit-btn"><input type="button" onClick="out()" value="提交评论"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="info-show">
                                <ul class="am-comments-list">
                                    <li class="am-comment">
                                        <a href="#link-to-user-home">
                                            <img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/96/h/96/q/80"
                                                 alt="" class="am-comment-avatar" width="48" height="48">
                                        </a>
                                        <div class="am-comment-main">
                                            <header class="am-comment-hd">
                                                <div class="am-comment-meta">
                                                    <a href="#link-to-user" class="am-comment-author">某人</a> 评论于
                                                    <time datetime="2013-07-27T04:54:29-07:00"
                                                          title="2013年7月27日 下午7:54 格林尼治标准时间+0800">
                                                        2014-7-12 15:30
                                                    </time>
                                                </div>
                                            </header>
                                            <div class="am-comment-bd">
                                                <p>《永远的蝴蝶》一文，还吸收散文特长，多采用第一人称，淡化情节，体现一种思想寄托和艺术追求。</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="am-comment">
                                        <a href="#link-to-user-home">
                                            <img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/96/h/96/q/80"
                                                 alt="" class="am-comment-avatar" width="48" height="48">
                                        </a>
                                        <div class="am-comment-main">
                                            <header class="am-comment-hd">
                                                <div class="am-comment-meta">
                                                    <a href="#link-to-user" class="am-comment-author">路人甲</a> 评论于
                                                    <time datetime="2013-07-27T04:54:29-07:00"
                                                          title="2013年7月27日 下午7:54 格林尼治标准时间+0800">
                                                        2014-7-13 0:03
                                                    </time>
                                                </div>
                                            </header>
                                            <div class="am-comment-bd">
                                                <p>感觉仿佛是自身的遭遇一样，催人泪下</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <hr>
                </div>
            </div>
        </article>
    </div>
<#--右侧目录-->
    <div class="am-u-md-3 am-u-sm-0 blog-sidebar fix-top" id="myDiv" style="padding:0 0 0 0;">
        <div class="blog-sidebar-widget blog-bor" style="margin-bottom:0;">
            <h2 class="blog-text-center blog-title"><span>目录</span></h2>
        </div>
        <div class="blog-sidebar-widget blog-bor style=" text-align: left
        " id="custom-toc-container">
    </div>
</div>
</div>

<#--回到顶部-->
<!-- asid start -->
<div class="asid_share" id="asid_share">
    <div class="asid_share_box relative">
        <a href="#"><img alt="扫二微码" title="扫二微码" class="adid_icon" src="/images/icon_sweep.png"></a>
        <div class="asid_share_triangle" style="display:none;">
            <em class="border_sj">&#9670;</em>
            <span class="con_sj">&#9670;</span>
        </div>
        <div class="asid_sha_layer" style="width:250px;display:none;">
            <p class="sweep_img"><img src="/images/weiixn.png" width="220"></p>
            <p class="pb6"><b>扫一扫上面的二维码图案，加我微信</b></p>
        </div>
    </div>
    <div class="asid_share_box relative" style="display:none;">
        <a href="#"><img alt="返回顶部" title="返回顶部" class="adid_icon" src="/images/icon_back.png"></a>
    </div>
</div>
<!-- asid end -->
<#------------------------------>
<#include "footer.ftl"/>


</body>
<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/js/zoomFontSize.js"></script>
<script type="text/javascript" src="/js/scrollfix.js"></script>
<script type="text/javascript" src="/js/jQuery.hhShare.min.js"></script>
<script src="/js/amazeui.min.js"></script>
<script src="/js/main.js"></script>
<script src="/js/sinaFaceAndEffec.js"></script>
<script src="/lib/marked.min.js"></script>
<script src="/lib/prettify.min.js"></script>
<script src="/lib/raphael.min.js"></script>
<script src="/lib/underscore.min.js"></script>
<script src="/lib/sequence-diagram.min.js"></script>
<script src="/lib/flowchart.min.js"></script>
<script src="/lib/jquery.flowchart.min.js"></script>
<script src="/js/editormd.js"></script>

<script type="text/javascript">
    // 绑定表情
    $('.face-icon').SinaEmotion($('.text'));
    // 测试本地解析
    function out() {
        var inputText = $('.text').val();
        $('#info-show ul').append(reply(AnalyticEmotion(inputText)));
    }


    function reply(content) {
        var html = "<li class=\"am-comment\">" +
                "<a href=\"#link-to-user-home\">" +
                "<img src=\"http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/96/h/96/q/80\"" +
                " alt=\"\" class=\"am-comment-avatar\" width=\"48\" height=\"48\"><\/a><div class=\"am-comment-main\">" +
                "<header class=\"am-comment-hd\"><div class=\"am-comment-meta\"><a href=\"#link-to-user\" class=\"am-comment-author\">" +
                "某人<\/a> 评论于 <time datetime=\"2013-07-27T04:54:29-07:00\" title=\"2013年7月27日 下午7:54 格林尼治标准时间+0800\">2014-7-12 15:30" +
                "<\/time><\/div><\/header><div class=\"am-comment-bd\"><p>《永远的蝴蝶》一文，还吸收散文特长，多采用第一人称，淡化情节，体现一种思想寄托和艺术追求。" +
                "<\/p><\/div><\/div><\/li>\n";
        return html;
    }
</script>
</html>
<script type="text/javascript">
    $(function () {

        //图片滚动特效
        $('#asid_share').hhShare({
            cenBox: 'asid_share_box',  //里边的小层
            icon: 'adid_icon',
            addClass: 'red_bag',
            titleClass: 'asid_title',
            triangle: 'asid_share_triangle', //鼠标划过显示图层，边上的小三角
            showBox: 'asid_sha_layer' //鼠标划过显示图层
        });

        var testEditormdView, testEditormdView2;
        $.get("/blog/content?sysyUrl=${blog.sysyUrl}", function (markdown) {
            testEditormdView = editormd.markdownToHTML("test-editormd-view", {
                markdown: markdown,//+ "\r\n" + $("#append-test").text(),
                //htmlDecode      : true,       // 开启 HTML 标签解析，为了安全性，默认不开启
                htmlDecode: "style,script,iframe",  // you can filter tags decode
                //toc             : false,
                tocm: true,    // Using [TOCM]
                tocContainer: "#custom-toc-container", // 自定义 ToC 容器层
                //gfm             : false,
                //tocDropdown     : true,
                // markdownSourceCode : true, // 是否保留 Markdown 源码，即是否删除保存源码的 Textarea 标签
                emoji: true,
                taskList: true,
                tex: true,  // 默认不解析
                flowChart: true,  // 默认不解析
                sequenceDiagram: true,  // 默认不解析
            });
            var fixtop = $(".fix-top");
            fixtop.scrollFix({distanceTop: 0});
        });

        //窗口大小改变时触发
        window.onresize = function () {
            var fixtop = $(".fix-top");
            fixtop.scrollFix({distanceTop: 0});
        }
    });
</script>