<!DOCTYPE html>
<html lang="en">

<head>
<#include "css.ftl"/>

</head>

<body>
<#include "header.ftl"/>
<!-- Page Header -->
<header class="intro-header" style="background-image: url('/img/contact-bg.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
                <div class="page-heading">
                    <h1>Contact Me</h1>
                    <hr class="small">
                    <span class="subheading"></span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
            <p>问题，建议，意见，均可留言哦，我会尽快回复的。</p>
            <!-- Contact Form - Enter your email address on line 19 of the mail/contact_me.php file to make this form work. -->
            <!-- WARNING: Some web hosts do not allow emails to be sent through forms to common mail hosts like Gmail or Yahoo. It's recommended that you use a private domain email address! -->
            <!-- NOTE: To use the contact form, your site must be on a live web host with PHP! The form will not work locally! -->
            <#--<form id="msgForm">
                <div class="control-group">
                    <div class="form-group floating-label-form-group controls">
                        <label>怎么称呼</label>
                        <input type="text" class="form-control" placeholder="怎么称呼" id="name" name="name" required
                               data-validation-required-message="Please enter your name.">
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <div class="control-group">
                    <div class="form-group floating-label-form-group controls">
                        <label>留个邮箱</label>
                        <input type="email" class="form-control" placeholder="留个邮箱" id="email" name="email"
                               required
                               data-validation-required-message="Please enter your email address.">
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <div class="control-group">
                    <div class="form-group floating-label-form-group controls">
                        <label>留言内容</label>
                        <textarea rows="5" class="form-control" placeholder="留言内容" id="message" name="msg"
                                  required
                                  data-validation-required-message="Please enter a message."></textarea>
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <br>
                <div id="success"></div>
                <div class="form-group">
                    <button onclick="send()" class="btn">搞定</button>
                </div>
            </form>-->

            <div>
                <div class="row">
                    <div class="col-lg-4">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <span class="badge list-group-item-success">4000</span>
                                这里已经有很多留言啦！
                            </li>
                        </ul>
                    </div>
                </div>


                <div class="media">
                    <div class="media-left">
                        <img class="media-object" src="javaaaaaaaa" alt="...">
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">小明</h4>
                        <p>有来过，666666。</p>
                        <p>4楼&nbsp;&nbsp;2017-08-08&nbsp;&nbsp;23:15发表</p>
                        <hr>
                    </div>
                </div>

                <div class="media">
                    <div class="media-left">
                        <img class="media-object" src="javaaaaaaaa" alt="...">
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">linda</h4>
                        <p>Cras sit amet nibh libero, in gr</p>
                        <p>3楼&nbsp;&nbsp;2017-08-08&nbsp;&nbsp;23:15发表</p>
                        <hr>
                    </div>
                </div>

                <div class="media">
                    <div class="media-left">
                        <img class="media-object" src="javaaaaaaaa" alt="...">
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">213213hkhkh</h4>
                        <p>Clla vel metus scelerisqpis.</p>
                        <p>2楼&nbsp;&nbsp;2017-08-08&nbsp;&nbsp;23:15发表</p>
                        <hr>
                    </div>
                </div>

                <div class="media">
                    <div class="media-left">
                        <img class="media-object" src="javaaaaaaaa" alt="...">
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Media heading</h4>
                        <p>Cras sit amet nibherra turpis.</p>
                        <p>1楼&nbsp;&nbsp;2017-08-08&nbsp;&nbsp;23:15发表</p>
                        <hr>
                    </div>
                </div>
                <div class="text-center">
                    <button class="btn btn-default btn-block">查看更多</button>
                </div>
            </div>
        </div>
    </div>
</div>

<#include "footer.ftl"/>
<script src="/js/contact_me.js"></script>
