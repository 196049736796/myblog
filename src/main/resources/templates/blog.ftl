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
    <link rel="stylesheet" type="text/css" href="/css/sinaFaceAndEffec.css"/>
    <link rel="stylesheet" href="/css/my.css">
    <link rel="stylesheet" href="/css/main.css"/>
    <link rel="stylesheet" href="/css/style.css"/>
    <link rel="stylesheet" href="/css/editormd.preview.css"/>
</head>

<body>
<#include "header.ftl"/>
<!-- Post Content    col-lg-8 offset-lg-2 col-md-10 offset-md-1  -->
<article>
    <!-- content srart -->
    <div class="am-g am-g-fixed blog-fixed blog-content">
        <div class="am-u-sm-12">
            <article class="am-article blog-article-p">
                <div class="am-article-hd" >
                    <h1 class="am-article-title blog-text-center">${blog.title}</h1>
                    <p class="am-article-meta blog-text-center" style="font-size: smaller;margin-top: 15px">
                        <span><a href="#" class="blog-color">@Post by &nbsp;</a></span>-
                        <span><a href="#">${blog.auth}  &nbsp;</a></span>-
                        <span><a href="#">${blog.createtime ?string('yyyy-MM-dd HH:mm:ss')}</a></span>
                    </p>
                </div>
                <div style="width: 100%;margin: 20px" align="center"><hr style="width: 600px;"></div>
                <#--  src="http://www.myxinge.cn/${blog.mainImgUrl}"  -->
                <div class="am-article-bd" id="mainContent">
                    <div id="img_content"><img id="b_img" style="width: 100%;height: auto;max-height: 500px"
                                                src="/images/17.jpg" alt=""
                                               class="blog-entry-img blog-article-margin"></div>
                </div>

                <div id="layout">
                    <div id="test-editormd-view">
                        <textarea id="append-test" style="display:none;">
                        </textarea>
                    </div>
                </div>
            </article>

            <hr>
            <div align="left"><a style="margin-left: 10px" href="http://www.myxinge.cn/blog/${blog.url}">原文出自：星尘 www.myxinge.cn</a></div>
             
        <#-----------------------------------------------文章结束-->
            <div class="am-g blog-article-widget blog-article-margin">
                <div class="am-u-lg-4 am-u-md-5 am-u-sm-7 am-u-sm-centered blog-text-center">
                    <span class="am-icon-tags"> &nbsp;</span><a href="#">Springboot</a> , <a href="#">Mybatis</a> , <a
                        href="#">框架整合</a>
                    <hr>
                    <a href=""><span class="am-icon-qq am-icon-fw am-primary blog-icon"></span></a>
                    <a href=""><span class="am-icon-wechat am-icon-fw blog-icon"></span></a>
                    <a href=""><span class="am-icon-weibo am-icon-fw blog-icon"></span></a>
                </div>
            </div>

            <hr>
            <ul class="am-pagination blog-article-margin">
                <li class="am-pagination-prev"><a href="#" class="">&laquo; 上一篇</a></li>
                <li class="am-pagination-next"><a href="">下一篇 &raquo;</a></li>
            </ul>

            <hr>

            <div id="content" style="width: 100%; height: auto;">
                <div class="wrap">
                    <div class="comment">
                        <div class="head-face">
                            <img src="/images/logo-50.png" / >
                            <p>星尘</p>
                        </div>
                        <div class="content">
                            <div class="cont-box">
                                <textarea class="text" placeholder="随便说两句吧"></textarea>
                            </div>
                            <div class="tools-box">
                                <div class="operator-box-btn">
                                    <span class="face-icon">☺</span>
                                </div>
                                <div class="submit-btn"><input type="button" onClick="out()" value="提交评论"/></div>
                            </div>
                        </div>
                    </div>
                    <div id="info-show">
                        <ul></ul>
                    </div>
                </div>
            </div>
            <hr>
        </div>
    </div>
</article>

<div style="display:none;width: 70px;height: 70px" class="back-to" id="toolBackTop">
    <a title="返回顶部" onclick="window.scrollTo(0,0);return false;" href="#top" class="back-top">
        返回顶部</a>
</div>

<#include "footer.ftl"/>


</body>

<script src="/js/jquery.min.js"></script>
<script src="/js/amazeui.min.js"></script>
<script src="/js/my.js"></script>
<script src="/js/main.js"></script>
<script src="/js/sinaFaceAndEffec.js"></script>
<script type="text/javascript">
    // 绑定表情
    $('.face-icon').SinaEmotion($('.text'));
    // 测试本地解析
    function out() {
        var inputText = $('.text').val();
        $('#info-show ul').append(reply(AnalyticEmotion(inputText)));
    }

    var html;
    function reply(content) {
        html = '<li>';
        html += '<div class="head-face">';
        html += '<img src="/images/logo-50.png" / >';
        html += '</div>';
        html += '<div class="reply-cont">';
        html += '<p class="username">星尘</p>';
        html += '<p class="comment-body">' + content + '</p>';
        html += '<p class="comment-footer">2016年10月5日　回复　点赞54　转发12</p>';
        html += '</div>';
        html += '</li>';
        return html;
    }
</script>
</html>
<script src="/js/jquery.min.js"></script>
<script src="/lib/marked.min.js"></script>
<script src="/lib/prettify.min.js"></script>
<script src="/lib/raphael.min.js"></script>
<script src="/lib/underscore.min.js"></script>
<script src="/lib/sequence-diagram.min.js"></script>
<script src="/lib/flowchart.min.js"></script>
<script src="/lib/jquery.flowchart.min.js"></script>
<script src="/js/editormd.js"></script>
<script type="text/javascript">
    $(function () {
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

            //console.log("返回一个 jQuery 实例 =>", testEditormdView);

            // 获取Markdown源码
            //console.log(testEditormdView.getMarkdown());

            //alert(testEditormdView.getMarkdown());
        });

        testEditormdView2 = editormd.markdownToHTML("test-editormd-view2", {
            htmlDecode: "style,script,iframe",  // you can filter tags decode
            emoji: true,
            taskList: true,
            tex: true,  // 默认不解析
            flowChart: true,  // 默认不解析
            sequenceDiagram: true,  // 默认不解析
        });
    });
</script>