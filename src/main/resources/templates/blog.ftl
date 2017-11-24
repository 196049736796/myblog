<!DOCTYPE html>
<html lang="en">

<head>

<#include "css.ftl"/>

</head>

<body>
<#include "header.ftl"/>

<!-- Page Header -->
<header class="intro-header" style="background-image: url('/img/post-bg.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
                <div class="post-heading">
                    <h1> ${blog.title}</h1>
                    <h2 class="subheading"></h2>
                    <span class="meta">Posted by <a
                            href="#">${blog.auth}</a> on ${blog.createtime ?string('yyyy-MM-dd HH:mm:ss')}</span>
                </div>
            </div>
        </div>
    </div>
</header>


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

</html>
