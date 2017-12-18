<!DOCTYPE html>
<html>
<head lang="en">
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
    <link href="/css/style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="/css/amazeui.min.css">
    <link rel="stylesheet" href="/css/app.css">
    <link rel="stylesheet" type="text/css" href="/css/sinaFaceAndEffec.css"/>
    <link rel="stylesheet" href="/css/main.css"/>
    <link rel="stylesheet" href="/css/editormd.preview.css"/>
    <style>
        @media only screen and (min-width: 641px) {
            .am-offcanvas {
                display: block;
                position: static;
                background: none;
            }

            .am-offcanvas-bar {
                position: static;
                width: auto;
                background: none;
                -webkit-transform: translate3d(0, 0, 0);
                -ms-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
            }
            .am-offcanvas-bar:after {
                content: none;
            }

        }

        @media only screen and (max-width: 640px) {
            .am-offcanvas-bar .am-nav>li>a {
                color:#ccc;
                border-radius: 0;
                border-top: 1px solid rgba(0,0,0,.3);
                box-shadow: inset 0 1px 0 rgba(255,255,255,.05)
            }

            .am-offcanvas-bar .am-nav>li>a:hover {
                background: #404040;
                color: #fff
            }

            .am-offcanvas-bar .am-nav>li.am-nav-header {
                color: #777;
                background: #404040;
                box-shadow: inset 0 1px 0 rgba(255,255,255,.05);
                text-shadow: 0 1px 0 rgba(0,0,0,.5);
                border-top: 1px solid rgba(0,0,0,.3);
                font-weight: 400;
                font-size: 75%
            }

            .am-offcanvas-bar .am-nav>li.am-active>a {
                background: #1a1a1a;
                color: #fff;
                box-shadow: inset 0 1px 3px rgba(0,0,0,.3)
            }

            .am-offcanvas-bar .am-nav>li+li {
                margin-top: 0;
            }
        }

        .my-head {
            margin-top: 40px;
            text-align: center;
        }

        .my-button {
            position: fixed;
            top: 0;
            right: 0;
            border-radius: 0;
        }
        .my-sidebar {
            padding-right: 0;
            border-right: 1px solid #eeeeee;
        }

    </style>
</head>
<body>
<#include "header.ftl"/>
<header class="am-g my-head">
    <div class="am-u-sm-12 am-article">
        <h1 class="am-article-title">${blog.title}</h1>
        <p class="am-article-meta">${blog.auth}</p>
    </div>
</header>
<hr class="am-article-divider"/>
<div class="am-g am-g-fixed blog-fixed blog-content main">
    <div class="am-u-md-9 am-u-md-push-3">
        <div class="am-g">
            <div class="am-u-sm-11 am-u-sm-centered">
                <div class="am-cf am-article">
                    <div class="am-align-left">
                        <img src="http://s.amazeui.org/media/i/demos/bing-1.jpg" alt="" width="240">
                    </div>
                    <div id="layout">
                        <div id="test-editormd-view">
                        <textarea id="append-test" style="display:none;">
                        </textarea>
                        </div>
                    </div>
                </div>
                <hr/>

            <#--回到顶部-->
                <!-- asid start -->
                <div class="asid_share" id="asid_share">
                    <div class="asid_share_box relative">
                        <a href="#"><img alt="扫二微码" title="扫二微码" class="adid_icon" src="/images/icon_sweep.png"></a>
                        <div class="asid_share_triangle" style="display:none;">
                            <em class="border_sj">&#9670;</em>
                            <span class="con_sj">&#9670;</span>
                        </div>
                        <div class="asid_sha_layer" style="width:250px;display:none;">
                            <p class="sweep_img"><img src="/images/weiixn.png" width="220"></p>
                            <p class="pb6"><b>扫一扫上面的二维码图案，加我微信</b></p>
                        </div>
                    </div>
                    <div class="asid_share_box relative" style="display:none;">
                        <a href="#"><img alt="返回顶部" title="返回顶部" class="adid_icon" src="/images/icon_back.png"></a>
                    </div>
                </div>


            </div>
        </div>
    </div>
    <div class="am-u-md-3 am-u-md-pull-9 my-sidebar" style="padding:0 0 0 0;" >
        <div class="am-offcanvas" id="sidebar">
            <ul class="am-nav">
                <li class="am-nav-header">目录</li>
            </ul>
            <div class="am-offcanvas-bar" id="custom-toc-container">
            </div>
        </div>
    </div>
</div>
<#include "footer.ftl"/>
</body>
<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/js/jQuery.hhShare.min.js"></script>
<script src="/js/amazeui.min.js"></script>
<script src="/js/main.js"></script>
<script src="/js/sinaFaceAndEffec.js"></script>
<script src="/lib/marked.min.js"></script>
<script src="/lib/prettify.min.js"></script>
<script src="/lib/raphael.min.js"></script>
<script src="/lib/underscore.min.js"></script>
<script src="/lib/sequence-diagram.min.js"></script>
<script src="/lib/flowchart.min.js"></script>
<script src="/lib/jquery.flowchart.min.js"></script>
<script src="/js/editormd.js"></script>

</html>
<script type="text/javascript">
    $(function () {

        //图片滚动特效
        $('#asid_share').hhShare({
            cenBox: 'asid_share_box',  //里边的小层
            icon: 'adid_icon',
            addClass: 'red_bag',
            titleClass: 'asid_title',
            triangle: 'asid_share_triangle', //鼠标划过显示图层，边上的小三角
            showBox: 'asid_sha_layer' //鼠标划过显示图层
        });

        var testEditormdView, testEditormdView2;
        $.get("/blog/content?sysyUrl=${blog.sysyUrl}", function (markdown) {
            testEditormdView = editormd.markdownToHTML("test-editormd-view", {
                markdown: markdown,//+ "\r\n" + $("#append-test").text(),
                //htmlDecode      : true,       // 开启 HTML 标签解析，为了安全性，默认不开启
                htmlDecode: "style,script,iframe",  // you can filter tags decode
                //toc             : false,
                tocm: true,    // Using [TOCM]
                tocContainer: "#custom-toc-container", // 自定义 ToC 容器层
                //gfm             : false,
                //tocDropdown     : true,
                // markdownSourceCode : true, // 是否保留 Markdown 源码，即是否删除保存源码的 Textarea 标签
                emoji: true,
                taskList: true,
                tex: true,  // 默认不解析
                flowChart: true,  // 默认不解析
                sequenceDiagram: true,  // 默认不解析
            });
            var fixtop = $(".fix-top");
            fixtop.scrollFix({distanceTop: 0});
        });

        //窗口大小改变时触发
        window.onresize = function () {
            var fixtop = $(".fix-top");
            fixtop.scrollFix({distanceTop: 0});
        }
    });
</script>
