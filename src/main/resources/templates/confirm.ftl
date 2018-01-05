<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>激活</title>

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
</head>
<body class="chang_fontSize" style="background-color: #F1F1F1;"><!--1px 1px 10px #aaa-->

<div class="log">
    <div class="am-g">
        <div class="am-u-lg-6 am-u-md-9 am-u-sm-9 am-u-sm-centered"
             style="margin-top:5%;height: 300px;background-color: white">
            <div style="height: 10px"></div>
            <p align="center" style="font-size: 25px;">${message}</p>
            <hr>
        <#if c_user??>
            <p align="left">
            ${c_user.name},您好,已经成功激活<span style="color: red">${c_user.email}</span>帐号，现在登录吧！
                <br>
                <a href="/p/log">
                    <button style="margin-top: 5px" type="button" class="am-btn am-btn-primary am-radius">登录</button>
                </a>
            </p>
        </#if>
        </div>
    </div>
</div>
<#include "footer.ftl"/>


<!--[if (gte IE 9)|!(IE)]><!-->
<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
<script src="/js/jquery.mloading.js"></script>
<script src="/js/jquery.serializejson.min.js"></script>
<script src="/js/amazeui.ie8polyfill.min.js"></script>
<script src="/js/amazeui.min.js"></script>
<script src="/js/app.js"></script>
<script type="text/javascript" src="/js/zoomFontSize.js"></script>
</body>
</html>