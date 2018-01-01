var isF = false;
var isV;


$(function () {
    $("body").mLoading({
        text: "加载中...",
        iconTag: "img",
        icon: "data:image/gif;base64,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",
        html: false,
        content: "",//设置content后，text和icon设置将无效
        mask: true//是否显示遮罩（半透明背景）
    });
    $("body").mLoading("hide");

    var $form = $('#log-form');
    $form.validator({
        onValid: function (validity) {
            $(validity.field).closest('.am-input-group').find('.am-alert').hide();
        },

        onInValid: function (validity) {
            var $field = $(validity.field);
            var $group = $field.closest('.am-input-group');
            var $alert = $group.find('.am-alert');
            // 使用自定义的提示信息 或 插件内置的提示信息
            var msg = $field.data('validationMessage') || this.getValidationMessage(validity);

            if (!$alert.length) {//class="log-alert am-alert am-alert-danger am-radius"
                $alert = $('<div class="log-alert am-alert am-alert-danger am-radius"></div>').hide().appendTo($group);
            }

            $alert.html(msg).show();
        },
        submit: function () {
            if (this.isFormValid()) {
                submitForm(url, msg);
            }

            return false;
        },
    });

    $("#resetForm").validator({
        onValid: function (validity) {
            $(validity.field).closest('.am-input-group').find('.am-alert').hide();
        },

        onInValid: function (validity) {
            var $field = $(validity.field);
            var $group = $field.closest('.am-input-group');
            var $alert = $group.find('.am-alert');
            // 使用自定义的提示信息 或 插件内置的提示信息
            var msg = $field.data('validationMessage') || this.getValidationMessage(validity);

            if (!$alert.length) {//class="log-alert am-alert am-alert-danger am-radius"
                $alert = $('<div class="log-alert am-alert am-alert-danger am-radius"></div>').hide().appendTo($group);
            }

            $alert.html(msg).show();
        },
        submit: function () {
            if (this.isFormValid()) {
                confirmMail();
            }

            return false;
        },
    });

    $("#pwdForm").validator({
        onValid: function (validity) {
            $(validity.field).closest('.am-input-group').find('.am-alert').hide();
        },

        onInValid: function (validity) {
            var $field = $(validity.field);
            var $group = $field.closest('.am-input-group');
            var $alert = $group.find('.am-alert');
            // 使用自定义的提示信息 或 插件内置的提示信息
            var msg = $field.data('validationMessage') || this.getValidationMessage(validity);

            if (!$alert.length) {//class="log-alert am-alert am-alert-danger am-radius"
                $alert = $('<div class="log-alert am-alert am-alert-danger am-radius"></div>').hide().appendTo($group);
            }

            $alert.html(msg).show();
        },
        submit: function () {
            if (this.isFormValid()) {
                resetP();
            }

            return false;
        },
    });

    $("#github_auth").click(function () {
        var url = Request("redirect").redirect;

        if (url == undefined || null == url) {
            url = "/";
        }

        // location.href = "https://github.com/login/oauth/authorize?client_id=f898f0826d59b3e21233&state="
        //     + url + "&redirect_uri=http://www.myxinge.cn/u/auth";

        location.href = "https://github.com/login/oauth/authorize?client_id=29c3d398403800141e87&state="
            + url + "&redirect_uri=http://localhost:8091/u/auth";
    });
});

function ok() {

    $('#my-alert').modal("close");
    if (isF) {
        if ("/u/reg" == url) {
            location.href = "/p/log";
        }
        if ("/u/log" == url) {
            var redirect = Request("redirect").redirect;
            if (null != url || undefined != url) {
                location.href = "/";
                return;
            }
            console.log("即将跳转：" + redirect)
            location.href = redirect;
        }
    }

}

function submitForm(url, msg) {
    $("body").mLoading("show");
    var data = $('#log-form').serializeJSON();

    $.ajax({
        url: url,
        data: data,
        dataType: "json",
        type: "post",
        async: false,
        success: function (rtn) {
            $("body").mLoading("hide");

            isF = rtn.success;

            var m = rtn.message;
            if ("1" == m) {
                if (isContains(msg, "{email}")) {
                    msg = msg.replace(/{email}/, data.email);
                }
                m = msg;
            }
            $("#msg").html(m);
            //打开
            $('#my-alert').modal();
        },
        error: function () {
            $("body").mLoading("hide");

            $("#msg").html("失败，网络错误，请稍后再试");
            //打开
            $('#my-alert').modal();
        }
    });
}


function saveU() {
    var data = $("#uUpdateForm").serializeJSON();
    $.ajax({
        url: "/u/update",
        data: data,
        dataType: 'json',
        type: 'post',
        success: function (rtn) {
            $("#alert_content").text(rtn.message);
            $('#up-modal-alert').modal();
        }
    });
}

function changeP() {
    var data = $("#changePForm").serializeJSON();
    $.ajax({
        url: "/u/changePwd",
        data: data,
        dataType: 'json',
        type: 'post',
        success: function (rtn) {
            $("#alert_content").text(rtn.message);
            $('#up-modal-alert').modal();
            $("#btnUpdate").click(function () {
                if (rtn.success) {
                    location.href = '/';
                }
            });
        }
    });
}

function resetForm(str) {
    document.getElementById(str).reset();
}

function isContains(str, substr) {
    return str.indexOf(substr) >= 0;
}

function confirmMail() {

    if (undefined == isV || false == isV) {
        alert("验证未通过");
        return;
    }

    var data = $("#resetForm").serializeJSON();
    if (undefined == data.re_mail || '' == data.re_mail) {
        alert("邮箱为空");
        return;
    }
    $("#dialog_reset").modal('close');
    $("#confirmMail").html("系统将会发送一封密码重置邮件到<span style='color: red'>" + data.re_mail + "</span>,请确认。");
    $("#confirmReset").modal();
}

function cancelRest() {
    location.href = "/p/log";
}

function resetPwd() {
    var data = $("#resetForm").serializeJSON();
    $.ajax({
        url: "/u/resetPwd",
        data: data,
        dataType: 'json',
        type: 'post',
        async: false,
        success: function (rtn) {
            $("#re_msg").html(rtn.message);
            $('#re_alert').modal();
        }
    });
}

function resetP() {
    var resetid = Request("resetid").resetid;
    if (undefined == resetid || '' == resetid) {
        $("#re_msg").html("ID为空");
        $('#re_alert').modal();
        return;
    }
    var data = $("#pwdForm").serializeJSON();
    data.resetid = resetid;
    $.ajax({
        url: '/u/resetP',
        data: data,
        dataType: 'json',
        type: 'post',
        success: function (rtn) {
            $("#re_msg").html(rtn.message);
            $('#re_alert').modal();
        }
    });
}


function closeW() {
    $('#re_alert').modal('close');
    location.reload();
}
function pwdreset() {
    $("#dialog_reset").modal();
}








