<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>密码重置</title>

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
    <link rel="stylesheet" href="/css/amazeui.min.css">
    <link rel="stylesheet" href="/css/app.css">
    <link rel="stylesheet" href="/css/editormd.preview.css"/>
</head>
<body class="chang_fontSize" style="background-color: #F1F1F1;"><!--1px 1px 10px #aaa-->

<div class="log">
    <div class="am-g">
        <div class="am-u-lg-6 am-u-md-9 am-u-sm-9 am-u-sm-centered"
             style="margin-top:5%;height: 300px;background-color: white">
            <div style="height: 10px"></div>
            <h2 align="center">密码重置</h2>
            <div style="height: 10px"></div>
            <div>
                <form class="am-form am-form-horizontal" id="pwdForm">
                    <div class="am-form-group am-form-feedback">
                        <label for="pwd" class="am-u-md-2 am-u-sm-4 am-form-label"
                               style="text-align: left">新密码</label>
                        <div class="am-u-md-10 am-u-sm-8">
                            <input type="password" id="pwd" class="am-form-field" name="pwd" placeholder="输入密码"
                                   minlength="8" required>
                        </div>
                    </div>
                    <hr>
                    <div class="am-form-group am-form-feedback">
                        <label for="repwd" class="am-u-md-2 am-u-sm-4 am-form-label"
                               style="text-align: left">再输入一次</label>
                        <div class="am-u-md-10 am-u-sm-8">
                            <input type="password" id="repwd" class="am-form-field" name="repwd"
                                   placeholder="再输入一次" data-validation-message="请确认密码一致" minlength="8" required>
                        </div>
                    </div>
                    <hr>
                    <div style="margin-top: 20px;margin-left: 15px">
                        <button type="submit" class="am-btn am-btn-primary am-radius">保存
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<div class="am-modal am-modal-alert " tabindex="-1" id="re_alert">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">提示</div>
        <div class="am-modal-bd" id="re_msg">
        </div>
        <div class="am-modal-footer">
            <button style="margin-top: 5px" type="button" onclick="closeW()" class="am-btn am-btn-primary">确定
            </button>
        </div>
    </div>
</div>
<#include "footer.ftl"/>


<!--[if (gte IE 9)|!(IE)]><!-->
<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
<script src="/js/jquery.mloading.js"></script>
<script src="/js/Request.js"></script>
<script src="/js/jquery.serializejson.min.js"></script>
<script src="/js/amazeui.ie8polyfill.min.js"></script>
<script src="/js/amazeui.min.js"></script>
<script src="/js/app.js"></script>
<script type="text/javascript" src="/js/zoomFontSize.js"></script>
</body>
</html>