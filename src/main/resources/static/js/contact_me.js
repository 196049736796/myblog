
function send() {
    var data = $("#msgForm").serialize();
    $.ajax({
        type: "post",
        url:"/sendMessage",
        dataType: "json",
        data:data,
        success:function (rtn) {
            $("#success").html(rtn.message);
        }

    });
}
