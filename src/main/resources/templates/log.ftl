<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>登录</title>

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
    <link rel="stylesheet" href="/css/jquery.mloading.css">
    <link rel="stylesheet" type="text/css" href="/css/verify.css">
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
            <h2 class="log-title am-animation-slide-top"><span><a href="#">登录</a></span>&nbsp;•&nbsp;<span><a
                    href="/p/reg">注册</a></span></h2>
            <div align="center">
            <#if loginMsg??>
                <div class="am-alert am-alert-danger" data-am-alert>
                ${loginMsg}
                </div>
            </#if>
            </div>
            <form class="am-form" id="log-form">
                <div class="am-input-group am-radius am-animation-slide-left">
                    <input type="email" name="email" id="doc-vld-email-2-1" class="am-radius"
                           data-validation-message="请输入正确邮箱地址"
                           placeholder="邮箱" required/>
                    <span class="am-input-group-label log-icon am-radius"><i
                            class="am-icon-user am-icon-sm am-icon-fw"></i></span>
                </div>
                <br>
                <div class="am-input-group am-animation-slide-left log-animation-delay">
                    <input type="password" class="am-form-field am-radius log-input" name="pwd" placeholder="密码"
                           minlength="8"
                           required>
                    <span class="am-input-group-label log-icon am-radius"><i
                            class="am-icon-lock am-icon-sm am-icon-fw"></i></span>
                </div>
                <br>
                <button id="logBtn"
                        class="am-btn am-btn-primary am-btn-block">
                    登 录
                </button>
                <p class="am-animation-slide-bottom log-animation-delay"><a onclick="pwdreset()"
                                                                            href="javascript:void(0);"
                                                                            style="color: #3bb4f2">忘记密码?</a>
                </p>
                <div class="am-btn-group  am-animation-slide-bottom log-animation-delay-b">
                    <p>使用第三方登录</p>
                    <a id="github_auth" href="javascript:void(0);"
                       class="am-btn am-btn-secondary am-btn-sm"><i class="am-icon-github am-icon-sm"></i>
                        Github</a>
                </div>
            </form>
            <div style="height: 15px"></div>
        </div>
    </div>

    <!--alert-->
    <div class="am-modal am-modal-alert " tabindex="-1" id="my-alert">
        <div class="am-modal-dialog">
            <div class="am-modal-hd">提示</div>
            <div class="am-modal-bd" id="msg">
            </div>
            <div class="am-modal-footer">
                <button style="margin-top: 5px" type="button" onclick="ok()" class="am-btn am-btn-primary">确定</button>
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

<div class="am-modal am-modal-no-btn" tabindex="-1" id="dialog_reset">
    <div class="am-modal-dialog" align="center">
        <div class="am-modal-hd"><h2>密码重置</h2>
            <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
        </div>
        <div class="am-modal-bd">
            <form class="am-form am-form-horizontal" id="resetForm">
                <div class="am-form-group">
                    <label for="doc-ipt-3" class="am-u-sm-2 am-form-label">邮箱</label>
                    <div class="am-u-sm-10">
                        <input type="email" name="re_mail" id="doc-vld-email-2-1" class="am-radius"
                               data-validation-message="请输入正确邮箱地址" placeholder="输入您的注册邮箱" required>
                    </div>
                </div>

                <div class="am-form-group">
                    <label for="doc-ipt-3" class="am-u-sm-2 am-form-label">验证</label>
                    <div id="mpanel1" class="am-u-sm-10">
                    </div>
                </div>
                <br>
                <button
                        class="am-btn am-btn-primary am-btn-block">
                    确认
                </button>
            </form>
        </div>
    </div>
</div>

<div class="am-modal am-modal-confirm" tabindex="-1" id="confirmReset">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">提示</div>
        <div class="am-modal-bd" id="confirmMail">
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" onclick="cancelRest()">取消</span>
            <span class="am-modal-btn" onclick="resetPwd()">确定</span>
        </div>
    </div>
</div>

<div class="am-modal am-modal-alert " tabindex="-1" id="re_alert">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">提示</div>
        <div class="am-modal-bd" id="re_msg">
        </div>
        <div class="am-modal-footer">
            <a href="/">
                <button style="margin-top: 5px" type="button" class="am-btn am-btn-primary">确定</button>
            </a>
        </div>
    </div>
</div>

<!--[if (gte IE 9)|!(IE)]><!-->
<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
<script src="/js/Request.js"></script>
<script src="/js/jquery.mloading.js"></script>
<script type="text/javascript">
    msg = "登陆成功";
    url = "/u/log";
</script>
<script src="/js/jquery.serializejson.min.js"></script>
<script src="/js/amazeui.ie8polyfill.min.js"></script>
<script src="/js/amazeui.min.js"></script>
<script type="text/javascript" src="/js/verify.min.js"></script>
<script src="/js/app.js"></script>
<script type="text/javascript" src="/js/zoomFontSize.js"></script>
<script type="text/javascript">
    $('#mpanel1').slideVerify({
        type: 1,		//类型
        vOffset: 5,	//误差量，根据需求自行调整
        barSize: {
            width: '200px',
            height: '40px',
        },
        ready: function () {
            isV = false;
        },
        success: function () {
            isV = true;
        },
        error: function () {
            isV = false;
        }

    });
</script>
</body>
</html>