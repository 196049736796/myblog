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
    <link href="/css/style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="/css/amazeui.min.css">
    <link rel="stylesheet" href="/css/app.css">
    <link rel="stylesheet" type="text/css" href="/css/sinaFaceAndEffec.css"/>
    <link rel="stylesheet" href="/css/main.css"/>
</head>


<body class="chang_fontSize">
<#include "header.ftl"/>

<!-- Main Content -->
<#--<div style="width: 100%">
    <img src="/images/banner2.jpg" width="100%" height="400px">
</div>-->
<div class="am-g am-g-fixed blog-fixed blog-content" style="margin-top: 16px">
    <div class="am-u-sm-12">
        <h2>About Me</h2>
        <p>我，坐标深圳，在一家小型企业上班。喜欢技术，热爱编程，也想把自己见到的，掌握的东西以博客的形式记录下来，加强记忆；
            也为了以后需要用的时候方便查阅。特别是IT技术行业，每天接触到的东西繁多复杂。因此，在2017年11月份开始找域名，备案，开发，
            这个网站主要使用java语言，其中后台优化使用了Redis缓存，还有一些文件存储，消息收发等技术(っ•̀ω•́)っ✎⁾⁾</p>
        <p>技术方面，我现在主要使用编程语言是Java，不过在Java偏底层方向研究还是不够深入；因此开通这个博客的主要专攻技术会在Java虚拟机，多线程，NIO，JDK，框架底层梳理，
            也会有一些常用开发环境配置，另外会有常用网址，工具集合等等。</p>
        <p>平时会看一些知识科普，天文知识，小时候还想着往这个方向发展，无奈机缘巧合，入了it这个坑，不过也会在一些犄角旮旯看看天文书籍，听听天文电台，浏览技术博客。
            我最喜欢的纪录片：『宇宙时空之旅』，最喜欢的电影：『星际穿越』，最向往的场景：『星际穿越男主人公掉进黑洞后看到五维时空的场景』</p>
        <p>喜欢交朋友，如果有志同道合的朋友，可以给我留言，&nbsp;互相学习，共同进步，为中华民族软件崛起而敲代码<img
                src="https://img.baidu.com/hi/jx2/j_0007.gif"/>。</p>
        <p style="float: right"><img src="/images/name.png"></p>
    </div>
</div>
</div>

<div class="am-g am-g-fixed blog-fixed blog-content main">
    <div id="content" class="am-u-md-12 am-u-sm-12 am-u-sm-centered" style="margin-top: 15px">
        <h3>留言（<span id="comm_count">${total}</span>）</h3>
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
                <textarea class="text" placeholder="留个言吧"></textarea>
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
                    <a href="/p/log"><input style="vertical-align: top" type="button"
                                            value="登录"/></a>
                </div>
            </div>
        </div>
    </#if>
    </div>
</div>

<div id="info-show" class="am-u-md-12 am-u-sm-12 am-u-sm-centered">
    <ul class="am-comments-list">
    <#if boardmsgList??>
        <#list boardmsgList as board>

            <li class="am-comment"><a href="/u/userInfo/${board.user.login}">
                <img src="${board.user.avatar_url}" alt="" class="am-comment-avatar" width="50"
                     height="50"></a>
                <div class="am-comment-main" style="margin-left: 55px">
                    <header class="am-comment-hd">
                        <div class="am-comment-meta">
                            <a href="/u/userInfo/${board.user.login}" class="am-comment-author">${board.user.name}</a>
                            留言于
                            <time
                                  datetime="${board.createtime ?string('yyyy-MM-dd HH:mm:ss')}"
                                  title="${board.createtime ?string('yyyy-MM-dd HH:mm:ss')}">
                            ${board.createtime ?string('yyyy-MM-dd HH:mm:ss')}</time>
                        </div>
                    </header>
                    <div class="am-comment-bd">
                        <p style="font-size:100%" class="comment_text">
                        ${board.text}
                        </p>
                        <div class="comment_footer">
                            <#if loginU??>
                                <#if loginU.id==board.user.id>
                                    <span style="float:right"><a href="javascript:void(0);"
                                                                 onclick="comme_del(${board.id},this)">删除</a></span>
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
<script src="/js/date.js"></script>

<#if loginU??>
<script type="text/javascript">
    // 绑定表情
    $('.face-icon').SinaEmotion($('.text'));
    // 测试本地解析
    function out() {
        var inputText = $('.text').val();
        if ('' == inputText || null == inputText) {
            $('#my-alert').modal();
            return;
        }

        //sendPost
        inputText = AnalyticEmotion(inputText);
        var url = '/board/add';
        var data = {
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
                "<img src=\"${loginU.avatar_url}\" alt=\"\" class=\"am-comment-avatar\" width=\"48\" height=\"48\"><\/a><div class=\"am-comment-main\"><header class=\"am-comment-hd\"><div class=\"am-comment-meta\"><a href=\"/u/userInfo/${loginU.login}\" class=\"am-comment-author\">${loginU.name}<\/a><\/div><\/header><div class=\"am-comment-bd\"><p style=\"font-size:100%\">" + content + "<\/p><div class=\"comment_footer\"><time style=\"float:left\" datetime=\"" + time + "\" title=\"" + time + "\">" + time + "<\/time><\/div><\/div><\/div><\/li>\n";
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
        var url = "/board/del/" + comm_id;
        $(ele).parent().parent().parent().parent().parent().remove();
        sendPost(url, null);
        var num = $('#comm_count').text();
        num = parseInt(num);
        $('#comm_count').text(num - 1 <= 0 ? 0 : num - 1);
    }
</script>
</#if>