<!DOCTYPE html>
<html>
<head lang="en">
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
    <style type="text/css">
        .comment_footer {
            margin-top: 10px;
            font-size: 30%;
            width: 100%;
        }

        .comment_footer a {
            margin-left: 15px;
        }

    </style>
</head>
<body class="chang_fontSize">
<#include "header.ftl"/>
<header class="am-g" style="margin-top: 40px; text-align: center;">
    <div class="am-u-sm-12 am-article">
        <h1 class="am-article-title">${blog.title}</h1>
        <p class="am-article-meta">${blog.auth}</p>
    </div>
</header>
<hr class="am-article-divider"/>
<div class="am-g am-g-fixed blog-fixed blog-content main">
    <div class="am-u-md-12">
        <div class="am-g">
            <div class="am-u-sm-11 am-u-sm-centered">
                <div class="am-cf am-article">
                    <div class="am-align-left">
                        <img src="http://s.amazeui.org/media/i/demos/bing-1.jpg" alt="" width="240">
                    </div>
                    <div id="layout">
                        <div id="test-editormd-view">
                        <textarea id="append-test" style="display:none;">
                        </textarea>
                        </div>
                    </div>
                </div>
                <hr/>
                <div align="left"><a href="http://www.myxinge.cn/blog/${blog.url}">原文出自：星尘 www.myxinge.cn</a></div>
            </div>
        </div>

    <#-- 文章结束 -->
        <div class="am-g blog-article-widget blog-article-margin">
            <div class="am-u-lg-4 am-u-md-5 am-u-sm-7 am-u-sm-centered blog-text-center">
                <span class="am-icon-tags"> &nbsp;</span><a href="#">Springboot</a> , <a
                    href="#">Mybatis</a> , <a
                    href="#">框架整合</a>
                <hr>
                <a href="#"><span class="am-icon-qq am-icon-fw am-primary blog-icon"></span></a>
                <a href="#"><span class="am-icon-wechat am-icon-fw blog-icon"></span></a>
                <a href="#"><span class="am-icon-weibo am-icon-fw blog-icon"></span></a>
            </div>
        </div>


    <#--评论-->
        <div id="content" class="am-u-md-12 am-u-sm-12 am-u-sm-centered" style="margin-top: 15px">
            <h3>评论(99+)</h3>
            <hr>
            <div class="comment am-u-md-12 am-u-sm-12 am-u-sm-centered">
                <div style="float: left;width: 5%;height: 120px">
                    <div><img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/96/h/96/q/80"
                              class="am-comment-avatar"/>
                        <div style="text-align: center;font-size: 30%;margin-top: 10px">星尘0085</div>
                    </div>
                </div>
                <div class="content">
                    <div class="cont-box">
                        <textarea class="text" placeholder="写下你的评论"></textarea>
                    </div>
                    <div class="tools-box">
                        <div class="operator-box-btn">
                            <span class="face-icon">☺</span>
                        </div>
                        <div class="submit-btn"><input style="vertical-align: top" type="button" onClick="out()"
                                                       value="提交"/>
                        </div>
                    </div>
                </div>
            </div>
            <div id="info-show" class="am-u-md-12 am-u-sm-12 am-u-sm-centered">
                <hr>
                <ul class="am-comments-list">
                    <li class="am-comment">
                        <a href="#link-to-user-home">
                            <img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/96/h/96/q/80"
                                 alt="" class="am-comment-avatar" width="48" height="48">
                        </a>
                        <div class="am-comment-main">
                            <header class="am-comment-hd">
                                <div class="am-comment-meta">
                                    <a href="#link-to-user" class="am-comment-author">某人</a>

                                </div>
                            </header>
                            <div class="am-comment-bd">
                                <p style="font-size: 100%">《永远的蝴蝶》一文，还吸收散文特长，多采用第一人称，淡化情节，体现一种思想寄托和艺术追求。</p>
                                <div class="comment_footer">
                                    <time style="float: left" datetime="2013-07-27T04:54:29-07:00"
                                          title="2013年7月27日 下午7:54 格林尼治标准时间+0800">
                                        2014-7-12 15:30
                                    </time>
                                    <span style="float: right"><a href="#">回复(99+)</a><a href="#">点赞(99+)</a><a
                                            href="#">删除</a></span>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>


    <!-- 侧边栏内容 -->
    <div id="sidebar" class="am-offcanvas">
        <div class="am-offcanvas-bar">
            <div class="am-offcanvas-content" id="custom-toc-container">
            </div>
        </div>
    </div>

</div>
<#--回到顶部-->
<!-- asid start -->
<div class="asid_share" id="asid_share">
    <div class="asid_share_box relative" id="mulu">
        <a href="#sidebar" data-am-offcanvas><img style="width: 30px;height: 30px" alt="目录" title="目录"
                                                  class="adid_icon" src="/images/list.png"
        ></a>
    </div>

    <div class="asid_share_box relative">
        <a href="#"><img alt="扫二微码" title="扫二微码" class="adid_icon" src="/images/icon_sweep.png">
        </a>
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

<#include "footer.ftl"/>
</body>
<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/js/zoomFontSize.js"></script>
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
</html>
<script type="text/javascript">
    // 绑定表情
    $('.face-icon').SinaEmotion($('.text'));
    // 测试本地解析
    function out() {
        var inputText = $('.text').val();
        $('#info-show ul').append(reply(AnalyticEmotion(inputText)));
    }

    function reply(content) {
        var html = "<li class=\"am-comment\"><a href=\"#link-to-user-home\"><img src=\"http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/96/h/96/q/80\" alt=\"\" class=\"am-comment-avatar\" width=\"48\" height=\"48\"><\/a><div class=\"am-comment-main\"><header class=\"am-comment-hd\"><div class=\"am-comment-meta\"><a href=\"#link-to-user\" class=\"am-comment-author\">某人<\/a><\/div><\/header><div class=\"am-comment-bd\"><p style=\"font-size:100%\">" + content + "<\/p><div class=\"comment_footer\"><time style=\"float:left\" datetime=\"2013-07-27T04:54:29-07:00\" title=\"2013年7月27日 下午7:54 格林尼治标准时间+0800\">2014-7-12 15:30<\/time> <span style=\"float:right\"><a href=\"#\">回复(99+)<\/a><a href=\"#\">点赞(99+)<\/a><a href=\"#\">删除<\/a><\/span><\/div><\/div><\/div><\/li>\n";
        return html;
    }
</script>
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
        });
    });
</script>
