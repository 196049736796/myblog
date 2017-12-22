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
        <#if loginU.isxing??>
        <#else >
            <div class="am-alert" data-am-alert>
                <button type="button" class="am-close">&times;</button>
                <p>说明：如果您是第三方登录账号,无法再此页面更改资料哦。当您在第三方更改后，资料会同步到本网站。</p>
            </div>
        </#if>
            <div class="am-tabs" data-am-tabs>
                <ul class="am-tabs-nav am-nav am-nav-tabs">
                    <li class="am-active"><a href="#tab-4-1">基础设置</a></li>
                    <li><a href="#tab-4-2">头像设置</a></li>
                    <li><a href="#tab-4-3">修改密码</a></li>
                </ul>
                <div class="am-tabs-bd am-tabs-bd-ofv">
                    <div class="am-tab-panel am-active" id="tab-4-1">
                        <form class="am-form am-form-horizontal">

                        <#-- 是否是第三方登录 -->
                        <#if loginU.isxing??>
                            <div class="am-form-group">
                                <label for="name" class="am-u-md-2 am-u-sm-4 am-form-label"
                                       style="text-align: left">昵称</label>
                                <div class="am-u-md-10 am-u-sm-8">
                                    <input type="text" value="${loginU.name!''}" id="name" class="am-form-field"
                                           name="name">
                                </div>
                            </div>
                        <#else >
                            <div class="am-u-md-2 am-u-sm-4"
                                 style="text-align: left">
                                <div style="height: 15px;"></div>
                                <b>昵称</b></div>
                            <div class="am-u-md-10 am-u-sm-8">
                                <div style="height: 15px;"></div>
                                <i class="am-icon-calendar"></i>
                            ${loginU.name!''}
                            </div>
                        </#if>
                            <hr>

                        <#if loginU.isxing??>
                            <div class="am-form-group">
                                <label for="html_url" class="am-u-md-2 am-u-sm-4 am-form-label"
                                       style="text-align: left">主页地址</label>
                                <div class="am-u-md-10 am-u-sm-8">
                                    <input type="text" name="html_url" value="${loginU.html_url!''}"
                                           class="am-form-field" id="html_url">
                                </div>
                            </div>
                        <#else >
                            <div class="am-u-md-2 am-u-sm-4"
                                 style="text-align: left">
                                <div style="height: 15px;"></div>
                                <b>主页地址</b></div>
                            <div class="am-u-md-10 am-u-sm-8">
                                <div style="height: 15px;"></div>
                                <i class="am-icon-calendar"></i>
                            ${loginU.html_url!''}
                            </div>
                        </#if>
                            <hr>
                            <div class="am-form-group" style="height: 52.2px;margin-bottom: 0px">
                                <div class="am-u-md-2 am-u-sm-4"
                                     style="text-align: left">
                                    <div style="height: 15px;"></div>
                                    <b>账号/邮箱</b></div>
                                <div class="am-u-md-10 am-u-sm-8">
                                    <div style="height: 15px;"></div>
                                    <b>${loginU.email!''}</b>
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
                                <#if loginU.created_at??>
                                ${loginU.created_at?string('yyyy-MM-dd HH:mm:ss')}
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
                                <#if loginU.updated_at??>
                                ${loginU.updated_at?string('yyyy-MM-dd HH:mm:ss')}
                                </#if>
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
                                <#if loginU.state=='0'>
                                    <span style="color: black"><b>未激活</b></span>
                                </#if>
                                <#if loginU.state=='1'>
                                    <span style="color: green"><b>已激活</b></span>
                                </#if>
                                <#if loginU.state=='-1'>
                                    <span style="color: red"><b>账号不可用，请联系管理员</b></span>
                                </#if>
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
                    <#if loginU.isxing??>
                        <div class="up-img-cover" id="up-img-touch">
                            <img class="am-circle" alt="点击图片上传" src="http://www.myxinge.cn/${loginU.avatar_url!''}"
                                 data-am-popover="{content: '点击上传', trigger: 'hover focus'}">
                        </div>
                        <div style="text-align: left;margin-top: 20px"><label>点击头像上传</label></div>
                    <#else >
                        <div class="up-img-cover">
                            <img class="am-circle" alt="头像" src="http://www.myxinge.cn/${loginU.avatar_url!''}">
                        </div>
                        <div style="text-align: left;margin-top: 20px"><label>第三方账号无法再此更改头像</label></div>
                    </#if>
                    </div>

                <#if loginU.isxing??>
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
                </#if>
                </div>
            </div>
            <div style="height: 25px">
            </div>
        </div>
    </div>
</div>

<!--图片上传框-->
<div class="am-modal am-modal-no-btn up-modal-frame"
     id="up-modal-frame" style="width: 600px;background-color: white">
    <div class="am-modal-dialog up-frame-parent up-frame-radius">
        <div class="am-modal-hd up-frame-header" style="background-color: white">
            <label>修改头像</label>
            <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
        </div>
        <div class="am-modal-bd  up-frame-body" style="background-color: white">
            <div class="am-g am-fl" style="background-color: white">

                <div class="am-form-group am-form-file" style="background-color: white">
                    <div class="am-fl">
                        <button type="button" class="am-btn am-btn-default am-btn-sm">
                            <i class="am-icon-cloud-upload"></i> 选择要上传的文件
                        </button>
                    </div>
                    <input type="file" class="up-img-file">
                </div>
            </div>
            <div class="am-g am-fl" style="background-color: white">
                <div class="up-pre-before up-frame-radius">
                    <img alt="" src="" class="up-img-show" id="up-img-show">
                </div>
                <div class="up-pre-after up-frame-radius">
                </div>
            </div>
            <div class="am-g am-fl" style="background-color: white">
                <div class="up-control-btns">
                    <span class="am-icon-rotate-left" id="up-btn-left"></span>
                    <span class="am-icon-rotate-right" id="up-btn-right"></span>
                    <span class="am-icon-check up-btn-ok" url="/u/uploadUserAvatar"
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