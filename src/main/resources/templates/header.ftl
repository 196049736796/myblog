<header class="am-topbar am-topbar-fixed-top">
    <nav class="am-g am-g-fixed blog-fixed blog-nav">
        <h1 class="am-topbar-brand">
            <a href="/">X.</a>
        </h1>
        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
                data-am-collapse="{target: '#blog-collapse'}"><span class="am-sr-only">导航切换</span> <span
                class="am-icon-bars"></span></button>

        <div class="am-collapse am-topbar-collapse" id="blog-collapse">
            <ul class="am-nav am-nav-pills am-topbar-nav">
                <li><a href="/">首页</a></li>
                <li><a href="/pe/archives">归档</a></li>
                <li><a href="/p/tools">工具</a></li>
                <li><a href="/p/about">关于</a></li>
                <li><a href="/board/list">留言</a></li>
            </ul>
            <form class="am-topbar-form am-topbar-right am-form-inline" role="search">
                <div class="am-form-group">
                    <input type="text" class="am-form-field am-input-sm" placeholder="搜索">
                </div>
            </form>

        <#if loginU??>
            <div class="am-topbar-right">
                <div class="am-dropdown" data-am-dropdown="{boundary: '.am-topbar'}">
                <#--<img class="am-comment-avatar" width="48" height="48" src="${loginU.avatar_url}" alt="">-->
                    <button class="am-btn am-btn-secondary am-topbar-btn am-btn-sm am-dropdown-toggle"
                            data-am-dropdown-toggle>${loginU.name}
                        <span class="am-icon-caret-down"></span></button>
                    <ul class="am-dropdown-content">
                        <li><a href="#">提到我的(99+)</a></li>
                        <li><a href="/p/userInfo">帐号设置</a></li>
                        <li><a href="/u/logout">退出</a></li>
                    </ul>
                </div>
            </div>

        <#else >
            <div class="am-topbar-right">
                <a href="/log.html">
                    <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm">登录</button>
                </a>
            </div>
        </#if>
        </div>
    </nav>
</header>
