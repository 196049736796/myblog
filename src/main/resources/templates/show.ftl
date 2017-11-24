<!DOCTYPE html>
<html lang="en">

<head>
<#include "css.ftl"/>

</head>

<body>
<#include "header.ftl"/>

<!-- Page Header -->
<header class="intro-header" style="background-image: url('img/home-bg.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
                <div class="site-heading">
                    <h1></h1>
                    <span class="subheading" style="margin-bottom: 45px"></span>
                </div>
            </div>
        </div>
    </div>
</header>

<!--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
<!-- Main Content -->
<div class="container">
    <!--CONTENT-->
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <h3 class="title-small">
                        <span>最新文章</span>
                    </h3>
                    <p class="content-detail">
                        我的代码曾运行在几千万用户的机器上，作为一个程序员，还有什么比这更让人满足的呢？如果有，那就是让这个用户数量再扩大 10 倍
                    </p>
                </div>
                <div class="col-md-9 content-right">
                    <div class="row">
                        <ul class="listing-item">
                        <#list blogs as blog>
                            <li>
                                <a href="/blog/${blog.url}">
                                    <div class="col-md-6 col-sm-6">
                                        <div class="wrap-card">
                                            <div class="card">
                                                <h2 class="time">
                                                ${blog.createtime ?string('yyyy-MM-dd HH:mm:ss')}
                                                </h2>
                                                <p class="title">
                                                ${blog.title}
                                                </p>
                                                <hr>
                                                <div class="text-detail">
                                                    <p>

                                                    ${blog.subject}

                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </#list>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

    <#include "footer.ftl"/>
    </div>
    <!--/.CONTENT-WRAP END-->
</div>


</body>

</html>
