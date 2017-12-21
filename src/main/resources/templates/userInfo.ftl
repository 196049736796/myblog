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
            <div class="am-tabs" data-am-tabs>
                <ul class="am-tabs-nav am-nav am-nav-tabs">
                    <li class="am-active"><a href="#tab-4-1">基础设置</a></li>
                    <li><a href="#tab-4-2">头像设置</a></li>
                    <li><a href="#tab-4-3">修改密码</a></li>
                </ul>
                <div class="am-tabs-bd am-tabs-bd-ofv">
                    <div class="am-tab-panel am-active" id="tab-4-1">
                        <form class="am-form am-form-horizontal">
                            <div class="am-form-group am-form-feedback">
                                <label for="name" class="am-u-md-2 am-u-sm-4 am-form-label"
                                       style="text-align: left">昵称</label>
                                <div class="am-u-md-10 am-u-sm-8">
                                    <input type="password" id="name" class="am-form-field" name="name" placeholder="昵称">
                                </div>
                            </div>
                            <hr>
                            <div class="am-form-group">
                                <label for="html_url" class="am-u-md-2 am-u-sm-4 am-form-label"
                                       style="text-align: left">主页地址</label>
                                <div class="am-u-md-10 am-u-sm-8">
                                    <input type="text" name="html_url" class="am-form-field" id="html_url"
                                           placeholder="地址">
                                </div>
                            </div>
                            <hr>
                            <div class="am-form-group" style="height: 52.2px;margin-bottom: 0px">
                                <div class="am-u-md-2 am-u-sm-4"
                                     style="text-align: left">
                                    <div style="height: 15px;"></div>
                                    <b>账号/邮箱</b></div>
                                <div class="am-u-md-10 am-u-sm-8">
                                    <div style="height: 15px;"></div>
                                    <b>1960497367@163.com</b>
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
                                    2017-12-21 23:05:45
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
                                    2017-12-21 23:05:45
                                </div>
                            </div>
                            <hr>
                            <div class="am-form-group">
                                <div class="am-u-md-2 am-u-sm-4"
                                     style="text-align: left">
                                    <div style="height: 15px;"></div>
                                    <b>是否激活</b></div>
                                <div class="am-u-md-10 am-u-sm-8">
                                    <div style="height: 15px;"></div>
                                    <span style="color: green"><b>已激活</b></span>
                                </div>
                            </div>
                            <hr>
                            <div style="margin-top: 20px;margin-left: 15px">
                                <button type="button" class="am-btn am-btn-primary am-radius">保存</button>
                                <button type="button" class="am-btn am-btn-default am-radius" style="margin-left: 10px">
                                    取消
                                </button>
                            </div>
                        </form>
                    </div>


                    <div class="am-tab-panel" id="tab-4-2" style="height: auto;">
                        <div class="up-img-cover" id="up-img-touch">
                            <img class="am-circle" alt="点击图片上传" src="/images/hu.jpg"
                                 data-am-popover="{content: '点击上传', trigger: 'hover focus'}">
                        </div>
                        <div class="up-img-txt"><label>上传图片名称:</label><a>hu.jpg</a></div>

                        <!--图片上传框-->
                        <div class="am-modal am-modal-no-btn up-modal-frame"
                             id="up-modal-frame">
                            <div class="am-modal-dialog up-frame-parent up-frame-radius">
                                <div class="am-modal-hd up-frame-header">
                                    <label>修改头像</label>
                                    <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
                                </div>
                                <div class="am-modal-bd  up-frame-body">
                                    <div class="am-g am-fl">

                                        <div class="am-form-group am-form-file">
                                            <div class="am-fl">
                                                <button type="button" class="am-btn am-btn-default am-btn-sm">
                                                    <i class="am-icon-cloud-upload"></i> 选择要上传的文件
                                                </button>
                                            </div>
                                            <input type="file" class="up-img-file">
                                        </div>
                                    </div>
                                    <div class="am-g am-fl">
                                        <div class="up-pre-before up-frame-radius">
                                            <img alt="" src="" class="up-img-show" id="up-img-show">
                                        </div>
                                        <div class="up-pre-after up-frame-radius">
                                        </div>
                                    </div>
                                    <div class="am-g am-fl">
                                        <div class="up-control-btns">
                                            <span class="am-icon-rotate-left" id="up-btn-left"></span>
                                            <span class="am-icon-rotate-right" id="up-btn-right"></span>
                                            <span class="am-icon-check up-btn-ok" url="/admin/user/upload.action"
                                                  parameter="{width:'100',height:'100'}"></span>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <!--加载框-->
                        <div class="am-modal am-modal-loading am-modal-no-btn" tabindex="-1" id="up-modal-loading">
                            <div class="am-modal-dialog">
                                <div class="am-modal-hd">正在上传...</div>
                                <div class="am-modal-bd">
                                    <span class="am-icon-spinner am-icon-spin"></span>
                                </div>
                            </div>
                        </div>

                        <!--警告框-->
                        <div class="am-modal am-modal-alert" tabindex="-1" id="up-modal-alert">
                            <div class="am-modal-dialog">
                                <div class="am-modal-hd">信息</div>
                                <div class="am-modal-bd" id="alert_content">
                                    成功了
                                </div>
                                <div class="am-modal-footer">
                                    <span class="am-modal-btn">确定</span>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="am-tab-panel" id="tab-4-3">
                        <form class="am-form am-form-horizontal">
                            <div class="am-form-group am-form-feedback">
                                <label for="opwd" class="am-u-md-2 am-u-sm-4 am-form-label"
                                       style="text-align: left">原密码</label>
                                <div class="am-u-md-10 am-u-sm-8">
                                    <input type="password" id="opwd" class="am-form-field" name="opwd"
                                           placeholder="输入原来密码">
                                </div>
                            </div>
                            <hr>
                            <div class="am-form-group am-form-feedback">
                                <label for="pwd" class="am-u-md-2 am-u-sm-4 am-form-label"
                                       style="text-align: left">新密码</label>
                                <div class="am-u-md-10 am-u-sm-8">
                                    <input type="password" id="pwd" class="am-form-field" name="pwd" placeholder="输入密码">
                                </div>
                            </div>
                            <hr>
                            <div class="am-form-group am-form-feedback">
                                <label for="repwd" class="am-u-md-2 am-u-sm-4 am-form-label"
                                       style="text-align: left">再输入一次</label>
                                <div class="am-u-md-10 am-u-sm-8">
                                    <input type="password" id="repwd" class="am-form-field" name="repwd"
                                           placeholder="再输入一次">
                                </div>
                            </div>
                            <hr>
                            <p align="right"><a href="#">密码找回?</a></p>
                            <div style="margin-top: 20px;margin-left: 15px">
                                <button type="button" class="am-btn am-btn-primary am-radius">保存</button>
                                <button type="button" class="am-btn am-btn-default am-radius" style="margin-left: 10px">
                                    取消
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div style="margin-bottom: 30px">
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
<script src="/js/cropper.min.js" charset="utf-8"></script>
<script src="/js/custom_up_img.js" charset="utf-8"></script>
<script type="text/javascript" src="/js/zoomFontSize.js"></script>
</body>
</html>