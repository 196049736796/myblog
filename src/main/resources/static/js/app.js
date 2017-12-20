$(function () {
    var isF = false;
    $('#log-form').validator({
        onValid: function (validity) {
            isF = true;
            $(validity.field).closest('.am-input-group').find('.am-alert').hide();
        },

        onInValid: function (validity) {
            isF = false;
            var $field = $(validity.field);
            var $group = $field.closest('.am-input-group');
            var $alert = $group.find('.am-alert');
            // 使用自定义的提示信息 或 插件内置的提示信息
            var msg = $field.data('validationMessage') || this.getValidationMessage(validity);

            if (!$alert.length) {
                $alert = $('<div class="log-alert am-alert am-alert-danger am-radius"></div>').hide().appendTo($group);
            }

            $alert.html(msg).show();
        },
        submit: function () {
            if (this.isFormValid()) {
                isF = true;
            } else {
                isF = false;
            }
            return false;
        }
    });

    //reg
    $("#regBtn").click(function () {
        if (isF) {
            var data = $('#log-form').serializeJSON();
            $.ajax({
                url: "/u/reg",
                data: data,
                dataType: "json",
                type: "post",
                success: function (rtn) {
                    $("#msg").html("你好，系统已经向<span style='margin-left: 5px;margin-right: 5px;color: red'>" + data.email
                        + "</span>发送了一封确认邮件，请按照邮件提示完成后续注册。");
                    //打开
                    $('#my-alert').modal();
                },
                error: function () {
                    alert("注册失败，网络错误，请稍后再试。");
                }
            });
        }
    });

    //log
    $("#logBtn").click(function () {
        if (isF) {
            var data = $('#log-form').serializeJSON();
            $.ajax({
                url: "/u/log",
                data: data,
                dataType: "json",
                type: "post",
                success: function (rtn) {
                    alert(rtn.message);
                },
                error: function () {
                    alert("登录失败，网络错误，请稍后再试。");
                }
            });
        }
    });

    $("#github_auth").click(function () {
        location.href = "https://github.com/login/oauth/authorize?client_id=f898f0826d59b3e21233&state=0&redirect_uri=http://localhost:8091/u/auth";
    });
});

function ok() {
    $('#my-alert').modal("close");
    location.href = "/log.html";
}








