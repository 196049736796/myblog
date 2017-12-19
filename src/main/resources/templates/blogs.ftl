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

<body class="chang_fontSize">
<#include "header.ftl"/>

<!-- Post Content    col-lg-8 offset-lg-2 col-md-10 offset-md-1  -->
<article>
    <div class="am-g am-g-fixed blog-fixed blog-content">
        <div class="am-u-sm-12">
            <h1 class="blog-text-center">-- 存档 --</h1>

            <div class="timeline-year">
            <#list archivesList as archives>
            <ul>
                <#list archives?keys as key>
                    <br>
                    <h3>${key}</h3>
                    <hr>
                    <#list archives[key] as blog>
                        <li>
                            <span class="am-u-sm-4 am-u-md-2 timeline-span blogDate">${blog.createtime}</span>
                            <span class="am-u-sm-8 am-u-md-6"><a href="/blog/${blog.url}">${blog.title}</a></span>
                            <span class="am-u-sm-4 am-u-md-2 am-hide-sm-only">暂无分类</span>
                            <span class="am-u-sm-4 am-u-md-2 am-hide-sm-only">${blog.auth}</span>
                        </li>
                    </#list>
                </ul>
                </#list>
            </#list>
            </div>
        </div>
    </div>
</article>

<#include "footer.ftl"/>

</body>

<script src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/zoomFontSize.js"></script>
<script src="/js/amazeui.min.js"></script>
<script type="text/javascript">
    $(function () {
        var format = function (time, format) {
            var t = new Date(time);
            var tf = function (i) {
                return (i < 10 ? '0' : '') + i
            };
            return format.replace(/yyyy|MM|dd|HH|mm|ss/g, function (a) {
                switch (a) {
                    case 'yyyy':
                        return tf(t.getFullYear());
                        break;
                    case 'MM':
                        return tf(t.getMonth() + 1);
                        break;
                    case 'mm':
                        return tf(t.getMinutes());
                        break;
                    case 'dd':
                        return tf(t.getDate());
                        break;
                    case 'HH':
                        return tf(t.getHours());
                        break;
                    case 'ss':
                        return tf(t.getSeconds());
                        break;
                }
            })
        }

        $.each($(".blogDate"), function (i, d) {
            var time = $(d).text().replace(/,/g,"");
            $(d).text(format(new Date(parseInt(time)), "MM-dd HH:mm"));
        })
    })
</script>
</html>
