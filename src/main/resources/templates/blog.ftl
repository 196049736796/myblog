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
    <link rel="stylesheet" href="/css/amazeui.min.css">
    <link rel="stylesheet" href="/css/app.css">
</head>

<body>
<#include "header.ftl"/>

<!-- Page Header -->

<!-- Post Content    col-lg-8 offset-lg-2 col-md-10 offset-md-1  -->
<article>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <iframe id="Iframe" src="http://119.23.62.228/${blog.sysyUrl}" width="100%" frameborder="0"
                        height="auto"
                        scrolling="no"></iframe>
            </div>
        </div>
    </div>
</article>

<#include "footer.ftl"/>

<script type="text/javascript">
    window.onload = function () {
        window.addEventListener('message', function (event) {
            if (event.origin === "http://www.myxinge.cn") {
                document.getElementById("Iframe").style.height = event.data + "px";
            }
        }, false);
    }
</script>

</body>

<script src="/js/jquery.min.js"></script>
<script src="/js/amazeui.min.js"></script>

</html>
