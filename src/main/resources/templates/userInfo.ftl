<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>账号设置</title>

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
<#-- 图片上传 -->
    <link rel="stylesheet" href="/css/amazeui.cropper.css">
    <link rel="stylesheet" href="/css/custom_up_img.css">
    <style type="text/css">
        .up-img-cover {
            width: 100px;
            height: 100px;
        }

        .up-img-cover img {
            width: 100%;
        }

        .up-img-txt label {
            font-weight: 100;
            margin-top: 50px;
        }
    </style>
</head>
<body class="chang_fontSize" style="background-color: #F1F1F1;"><!--1px 1px 10px #aaa-->
<#include "header.ftl"/>
<div class="log">
    <div class="am-g">
        <div class="am-u-lg-9 am-u-md-9 am-u-sm-9 am-u-sm-centered"
             style="margin-top:15px;height: auto;background-color: white">
            <div style="height: 10px"></div>
            <p style="font-size: 20px" align="left">账号设置</p>

        <#-- 是否是第三方登录 -->
        <#if user.isxing??>
        <#else >
            <div class="am-alert" data-am-alert>
                <button type="button" class="am-close">&times;</button>
                <p>说明：如果您是第三方登录账号,暂时无法更改资料。当您在第三方更改后，资料会同步到本网站。</p>
            </div>
        </#if>
            <div class="am-tabs" data-am-tabs>
                <ul class="am-tabs-nav am-nav am-nav-tabs">
                    <li class="am-active"><a href="#tab-4-1">基本信息</a></li>
                </ul>
                <div class="am-tabs-bd am-tabs-bd-ofv">
                    <div class="am-tab-panel am-active" id="tab-4-1">
                        <div class="am-u-md-2 am-u-sm-4"
                             style="text-align: left">
                            <div style="height: 15px;"></div>
                            <b>昵称</b></div>
                        <div class="am-u-md-10 am-u-sm-8">
                            <div style="height: 15px;"></div>
                        <#if !user.name??|| user.name=''>
                            <b>-</b>
                        <#else >
                        ${user.name}
                        </#if>
                        </div>
                        <hr>

                        <div class="am-u-md-2 am-u-sm-4"
                             style="text-align: left">
                            <div style="height: 15px;"></div>
                            <b>主页地址</b></div>
                        <div class="am-u-md-10 am-u-sm-8">
                            <div style="height: 15px;"></div>
                            <a href="${user.html_url!''}">
                            <#if !user.html_url??||user.html_url=''>
                                <b>-</b>
                            <#else >
                            ${user.html_url}
                            </#if>
                            </a>
                        </div>
                        <hr>
                        <div class="am-form-group" style="height: 52.2px;margin-bottom: 0px">
                            <div class="am-u-md-2 am-u-sm-4"
                                 style="text-align: left">
                                <div style="height: 15px;"></div>
                                <b>账号/邮箱</b></div>
                            <div class="am-u-md-10 am-u-sm-8">
                                <div style="height: 15px;"></div>
                            <#if !user.email?? || user.email=''>
                                <b>-</b>
                            <#else >
                                <b>${user.email!'-'}</b>
                            </#if>
                            </div>
                        </div>
                        <hr>
                        <div class="am-form-group">
                            <div class="am-u-md-2 am-u-sm-4"
                                 style="text-align: left">
                                <div style="height: 15px;"></div>
                                <b>注册时间</b></div>
                            <div class="am-u-md-10 am-u-sm-8">
                                <div style="height: 15px;"></div>
                                <i class="am-icon-calendar"></i>
                            <#if user.created_at??>
                            ${user.created_at?string('yyyy-MM-dd HH:mm:ss')}
                            <#else>
                                -
                            </#if>
                            </div>
                        </div>
                        <hr>
                        <div class="am-form-group">
                            <div class="am-u-md-2 am-u-sm-4"
                                 style="text-align: left">
                                <div style="height: 15px;"></div>
                                <b>上次修改时间</b></div>
                            <div class="am-u-md-10 am-u-sm-8">
                                <div style="height: 15px;"></div>
                                <i class="am-icon-calendar"></i>
                            <#if user.updated_at??>
                            ${user.updated_at?string('yyyy-MM-dd HH:mm:ss')}
                            <#else>
                                -
                            </#if>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div style="height: 25px">
            </div>
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