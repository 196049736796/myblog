
function send() {
    var data = $("#msgForm").serialize();
    $.ajax({
        type: "post",
        url:"/board/sendMessage",
        dataType: "json",
        data:data,
        success:function (rtn) {
            $("#success").html(rtn.message);
        }
    });
}

function moreBoard(page) {
    //计算楼层
    var floor = (page -1) * 6;
    $.ajax({
        type: "post",
        url:"/board/list?page="+page,
        dataType: "json",
        success:function (rtn) {
            var list = rtn.rows;
            $.each(list,function (index,board) {
                var boardDiv = "<div class=\"media\"><div class=\"media-left\">" +
                    "<a href=\"#\"><img style=\"width:50px;height:50px\" class=\"media-object img-circle\" src=\"/img/a.png\" alt=\"...\"><\/a>" +
                    "<\/div><div class=\"media-body\"><h3 class=\"media-heading\">"+board.name+"<\/h3>" +
                    "<p style=\"font-size:large;font-family:'Microsoft YaHei'\">"+board.msg+"<\/p>" +
                    "<p>"+(++floor)+"楼&nbsp;&nbsp; "+datetimeFormat(board.createtime)+"发表 &nbsp;&nbsp; " +
                    "<a href=\"#\" style=\"color:#2aabd2\">回复<\/a><\/p><hr><\/div><\/div>";
                $("#boardD").append(boardDiv);
            });
            if(floor >= rtn.total){
                $("#load").remove();
            }else{
                //按钮值
                $("#load").attr("onclick","moreBoard("+page+"+1)");
            }
        }
    });
}

function datetimeFormat(longTypeDate){
    var datetimeType = "";
    var date = new Date();
    date.setTime(longTypeDate);
    datetimeType = date.getFullYear()+"-"+getMonth(date)+"-"+getDay(date)+" "+getHours(date)+":"+getMinutes(date)+":"+getSeconds(date);//yyyy-MM-dd 00:00:00格式日期
    return datetimeType;
}

//返回 01-12 的月份值
function getMonth(date){
    var month = "";
    month = date.getMonth() + 1; //getMonth()得到的月份是0-11
    if(month<10){
        month = "0" + month;
    }
    return month;
}
//返回01-30的日期
function getDay(date){
    var day = "";
    day = date.getDate();
    if(day<10){
        day = "0" + day;
    }
    return day;
}
//返回小时
function getHours(date){
    var hours = "";
    hours = date.getHours();
    if(hours<10){
        hours = "0" + hours;
    }
    return hours;
}
//返回分
function getMinutes(date){
    var minute = "";
    minute = date.getMinutes();
    if(minute<10){
        minute = "0" + minute;
    }
    return minute;
}
//返回秒
function getSeconds(date){
    var second = "";
    second = date.getSeconds();
    if(second<10){
        second = "0" + second;
    }
    return second;
}
