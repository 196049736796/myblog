<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>注册</title>

    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">

    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon"/>
    <meta name="mobile-web-app-capable" content="yes">
    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="stylesheet" href="/css/editormd.preview.css"/>
    <link rel="stylesheet" href="/css/amazeui.min.css">
    <link rel="stylesheet" href="/css/app.css">
    <link rel="stylesheet" href="/css/jquery.mloading.css">
    <style type="text/css">
        .my-footer {
            border-top: 1px solid #eeeeee;
            padding: 10px 0;
            margin-top: 50px;
            text-align: center;
        }

        .am-input-group-label {
            height: 36px;
        }
    </style>
</head>
<body class="chang_fontSize" style="background-color: #F1F1F1;"><!--1px 1px 10px #aaa-->
<#include "header.ftl"/>
<div class="log">
    <div class="am-g">
        <div class="am-u-lg-3 am-u-md-6 am-u-sm-8 am-u-sm-centered log-content">
            <h2 class="log-title am-animation-slide-top"><span><a href="#">注册</a></span>&nbsp;•&nbsp;<span><a
                    href="/p/log">登录</a></span></h2>
            <form class="am-form" id="log-form">

                <div class="am-input-group am-radius am-animation-slide-left ">
                    <input type="text" name="name" class="am-form-field am-radius log-input"
                           placeholder="昵称" minlength="1" maxlength="10" required/>
                    <span class="am-input-group-label log-icon am-radius"><i
                            class="am-icon-user am-icon-sm am-icon-fw"></i></span>
                </div>
                <br>
                <div class="am-input-group am-radius am-animation-slide-left ">
                    <input type="email" name="email" id="doc-vld-email-2-1" class="am-radius js-ajax-validate"
                           data-validation-message="请输入正确邮箱地址"
                           placeholder="邮箱" required/>
                    <span class="am-input-group-label log-icon am-radius"><i
                            class="am-icon-user am-icon-sm am-icon-fw"></i></span>
                </div>
                <br>
                <div class="am-input-group am-animation-slide-left log-animation-delay">
                    <input type="password" id="log-password" name="pwd" class="am-form-field am-radius log-input"
                           placeholder="密码" minlength="8" required>
                    <span class="am-input-group-label log-icon am-radius"><i
                            class="am-icon-lock am-icon-sm am-icon-fw"></i></span>
                </div>
                <br>
                <div class="am-input-group am-animation-slide-left log-animation-delay-a">
                    <input type="password" data-equal-to="#log-password" name="repwd"
                           class="am-form-field am-radius log-input" placeholder="确认密码"
                           data-validation-message="请确认密码一致" required>
                    <span class="am-input-group-label log-icon am-radius"><i
                            class="am-icon-lock am-icon-sm am-icon-fw"></i></span>
                </div>
                <br>
                <button id="regBtn"
                        class="am-btn am-btn-primary am-btn-block">
                    注册
                </button>
            </form>
            <div style="height: 15px"></div>
        </div>
    </div>

    <!--alert-->
    <div class="am-modal am-modal-alert" tabindex="-1" id="my-alert" style="z-index: 10000">
        <div class="am-modal-dialog">
            <div class="am-modal-hd">提示</div>
            <div class="am-modal-bd" id="msg">
            </div>
            <div class="am-modal-footer">
                <button style="margin-top: 5px" type="button" onclick="ok()" class="am-btn am-btn-primary">我知道了</button>
            </div>
        </div>
    </div>

    <footer class="my-footer">
        <p>© 星尘<br>
            <small>
                <a href="http://www.miitbeian.gov.cn/">粤ICP备17139781号</a></small>
        </p>
    </footer>
</div>


<!--[if (gte IE 9)|!(IE)]><!-->
<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
<script src="/js/jquery.mloading.js"></script>
<script type="text/javascript">
    msg = "你好，系统已经向<span style='margin-left: 5px;margin-right: 5px;color: red'>{email}</span>发送了一封确认邮件，请按照邮件提示完成后续注册。";
    url = "/u/reg";
</script>
<script src="/js/jquery.serializejson.min.js"></script>
<script src="/js/amazeui.ie8polyfill.min.js"></script>
<script src="/js/amazeui.min.js"></script>
<script src="/js/app.js"></script>
<script type="text/javascript" src="/js/zoomFontSize.js"></script>
</body>
</html>