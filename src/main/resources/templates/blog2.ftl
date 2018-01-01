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
            font-size: 85%;
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
                <#--<div class="am-align-left">
                    <img src="http://s.amazeui.org/media/i/demos/bing-1.jpg" alt="" width="240">
                </div>-->
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
            <h3>评论（<span id="comm_count">${total}</span>）</h3>
            <hr>
        <div class="comment">
        <div style="height: 120px" class="am-u-md-1 am-u-sm-3">

        <#--已登陆-->
        <#if loginU??>
            <div style="width: 100%;text-align: center;height: 50px">
                <img src="${loginU.avatar_url}"
                     class="am-comment-avatar"/>
            </div>
            <div style="margin-left:5px;font-size: 100%;margin-top: 10px;width: 100%;color: #0000cc">${loginU.name}</div>
        </div>
            <div class="content am-u-md-11 am-u-sm-9">
                <div class="cont-box">
                    <textarea class="text" placeholder="写下你的评论"></textarea>
                </div>
                <div class="tools-box">
                    <div class="operator-box-btn">
                        <span class="face-icon">☺</span>
                    </div>
                    <div class="submit-btn"><input style="vertical-align: top" type="button" onClick="out(${blog.id})"
                                                   value="提交"/>
                    </div>
                </div>
            </div>



        <#--未登录-->
        <#else >
            <div style="width: 100%;text-align: center;height: 50px">
                <img src="/images/img.jpg"
                     class="am-comment-avatar"/>
            </div>
            <div style="margin-left:5px;font-size: 100%;margin-top: 10px;width: 100%">未登录</div>
        </div>
            <div class="content am-u-md-11 am-u-sm-9">
                <div class="cont-box">
                    <textarea class="text" placeholder="需要先登录哦"></textarea>
                </div>
                <div class="tools-box">
                    <div class="operator-box-btn">
                        <span class="face-icon">☺</span>
                    </div>
                    <div class="submit-btn">
                        <a href="javascript:void(0);" onclick="goLogin()"><input style="vertical-align: top"
                                                                                 type="button"
                                                                                 value="登录"/></a>
                    </div>
                </div>
            </div>
        </#if>
        </div>
        <div id="info-show" class="am-u-md-12 am-u-sm-12 am-u-sm-centered">
            <hr>
            <ul class="am-comments-list">
            <#if comments??>
                <#list comments as comment>

                    <li class="am-comment"><a href="/u/userInfo/${comment.user.login}">
                        <img src="${comment.user.avatar_url}" alt="" class="am-comment-avatar" width="48"
                             height="48"></a>
                        <div class="am-comment-main">
                            <header class="am-comment-hd">
                                <div class="am-comment-meta">
                                    <a href="/u/userInfo/${comment.user.login}"
                                       class="am-comment-author">${comment.user.name}</a>
                                </div>
                            </header>
                            <div class="am-comment-bd">
                                <p style="font-size:100%" class="comment_text">
                                ${comment.text}
                                </p>
                                <div class="comment_footer">
                                    <time style="float:left"
                                          datetime="${comment.createTime ?string('yyyy-MM-dd HH:mm:ss')}"
                                          title="${comment.createTime ?string('yyyy-MM-dd HH:mm:ss')}">
                                    ${comment.createTime ?string('yyyy-MM-dd HH:mm:ss')}</time>
                                    <#if loginU??>
                                        <#if loginU.id==comment.user.id>
                                            <span style="float:right"><a href="javascript:void(0);"
                                                                         onclick="comme_del(${comment.id},this)">删除</a></span>
                                        </#if>
                                    </#if>
                                </div>
                            </div>
                        </div>
                    </li>

                </#list>
            </#if>
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

<div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">提示</div>
        <div class="am-modal-bd">
            请先写点东西吧.
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn">确定</span>
        </div>
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
<script src="/js/jquery.mloading.js"></script>
<script src="/js/date.js"></script>
</html>
<#if loginU??>
<script type="text/javascript">
    // 绑定表情
    $('.face-icon').SinaEmotion($('.text'));

    // 测试本地解析
    function out(id) {
        var inputText = $('.text').val();
        if ('' == inputText || null == inputText) {
            $('#my-alert').modal();
            return;
        }

        //sendPost
        inputText = AnalyticEmotion(inputText);
        var url = '/comments/add';
        var data = {
            'fid': id,
            'fcat': '2',
            'text': inputText
        }
        sendPost(url, data);

        inputText = reply(inputText, new Date().Format("yyyy-MM-dd hh:mm:ss"), 0);
        $('#info-show ul').prepend(inputText);
        $('.text').val("");
        var num = $('#comm_count').text();
        num = parseInt(num);
        $('#comm_count').text(num + 1);
    }

    function reply(content, time, like_num) {
        var html = "<li class=\"am-comment\"><a href=\"/u/userInfo/${loginU.login}\">" +
                "<img src=\"${loginU.avatar_url}\" alt=\"\" class=\"am-comment-avatar\" width=\"48\" height=\"48\"><\/a><div class=\"am-comment-main\"><header class=\"am-comment-hd\"><div class=\"am-comment-meta\"><a href=\"/u/userInfo/${loginU.login}\" class=\"am-comment-author\">${loginU.name!''}<\/a><\/div><\/header><div class=\"am-comment-bd\"><p style=\"font-size:100%\">" + content + "<\/p><div class=\"comment_footer\"><time style=\"float:left\" datetime=\"" + time + "\" title=\"" + time + "\">" + time + "<\/time><\/div><\/div><\/div><\/li>\n";
        return html;
    }

    function sendPost(url, data) {
        $.ajax({
            url: url,
            data: data,
            dataType: 'json',
            type: 'post',
        });
    }

    function comme_del(comm_id, ele) {
        var url = "/comments/del/" + comm_id;
        $(ele).parent().parent().parent().parent().parent().remove();
        sendPost(url, null);
        var num = $('#comm_count').text();
        num = parseInt(num);
        $('#comm_count').text(num - 1 <= 0 ? 0 : num);
    }
</script>
</#if>

<script type="text/javascript">
    $(function () {
        $("body").mLoading({
            text: "加载中...",
            iconTag: "img",
            icon: "data:image/gif;base64,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",
            html: false,
            content: "",//设置content后，text和icon设置将无效
            mask: true//是否显示遮罩（半透明背景）
        });
        $("body").mLoading("show");

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
//                htmlDecode: "style,script,iframe",  // you can filter tags decode
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
            $("body").mLoading("hide");
        });
    })
    ;

</script>
