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
    <link rel="stylesheet" href="/css/amazeui.min.css">
    <link rel="stylesheet" href="/css/app.css">
</head>

<body>
<#include "header.ftl"/>
<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
            <p>问题，建议，意见，均可留言哦，我会尽快回复的。</p>

            <div id="boardD">
                <div class="row">
                    <div class="col-lg-4">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <span class="badge list-group-item-success">${boardCount}</span>
                                留言数量
                            </li>
                        </ul>
                    </div>
                </div>

                <#--显示5条，当按钮按下时，请求后将数据拼接即可-->
                <#list boardList as board>
                    <div class="media">
                        <div class="media-left">
                            <a href="#">
                                <img style="width: 50px;height: 50px" class="media-object img-circle" src="/img/a.png" alt="...">
                            </a>
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">${board.name}</h3>
                            <p style="font-size: large;font-family: 'Microsoft YaHei'">${board.msg}</p>
                            <p>${board_index + 1}楼&nbsp;&nbsp; ${board.createtime ?string('yyyy-MM-dd HH:mm:ss')}发表
                                &nbsp;&nbsp;
                                <a href="#" style="color: #2aabd2">回复</a>
                            </p>
                            <hr>
                        </div>
                    </div>
                </#list>
            </div>
            <div class="text-center">
                <button id="load" class="btn btn-default btn-block" onclick="moreBoard(${page} +1)">查看更多</button>
            </div>
        </div>
    </div>
</div>
<#include "footer.ftl"/>

<script src="/js/jquery.min.js"></script>
<script src="/js/amazeui.min.js"></script>
</body>
