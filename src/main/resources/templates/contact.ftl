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

<div class="am-g am-g-fixed blog-fixed blog-content main">
    <div id="content" class="am-u-md-12 am-u-sm-12 am-u-sm-centered" style="margin-top: 15px">
        <h3>留言(99+)</h3>
        <hr>
    <div class="comment" style="height: 120px">
    <div class="am-u-md-1 am-u-sm-3">

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
                <textarea class="text" placeholder="留个言"></textarea>
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



    <#--未登录-->
    <#else >
        <div style="width: 100%;text-align: center;height: 50px">
            <img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/96/h/96/q/80"
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
                    <a href="/log.html"><input style="vertical-align: top" type="button"
                                               value="登录"/></a>
                </div>
            </div>
        </div>
    </#if>
    </div>
</div>

<div id="info-show" class="am-u-md-12 am-u-sm-12 am-u-sm-centered">
    <ul class="am-comments-list">
    </ul>
</div>

<#include "footer.ftl"/>

</body>
</html>
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

<#if loginU??>
<script type="text/javascript">
    // 绑定表情
    $('.face-icon').SinaEmotion($('.text'));
    // 测试本地解析
    function out() {
        var inputText = $('.text').val();
        $('#info-show ul').append(reply(AnalyticEmotion(inputText)));
    }

    function reply(content) {
        var html = "<li class=\"am-comment\"><a href=\"#link-to-user-home\">" +
                "<img src=\"${loginU.avatar_url}\" alt=\"\" class=\"am-comment-avatar\" width=\"48\" height=\"48\"><\/a><div class=\"am-comment-main\"><header class=\"am-comment-hd\"><div class=\"am-comment-meta\"><a href=\"#link-to-user\" class=\"am-comment-author\">${loginU.name}<\/a><\/div><\/header><div class=\"am-comment-bd\"><p style=\"font-size:100%\">" + content + "<\/p><div class=\"comment_footer\"><time style=\"float:left\" datetime=\"2013-07-27T04:54:29-07:00\" title=\"2013年7月27日 下午7:54 格林尼治标准时间+0800\">2014-7-12 15:30<\/time> <span style=\"float:right\"><a href=\"#\">回复(99+)<\/a><a href=\"#\">点赞(99+)<\/a><a href=\"#\">删除<\/a><\/span><\/div><\/div><\/div><\/li>\n";
        return html;
    }
</script>
</#if>
