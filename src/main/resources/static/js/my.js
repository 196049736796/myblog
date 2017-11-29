$(document).ready(function () {

    //回到顶部
    var bt = $('#toolBackTop');
    var sw = $(document.body)[0].clientWidth;

    var limitsw = (sw - 840) / 2 - 200;
    if (limitsw > 0){
        limitsw = parseInt(limitsw);
        bt.css("right",limitsw);
    }

    $(window).scroll(function() {
        var st = $(window).scrollTop();
        if(st > 30){
            bt.show();
        }else{
            bt.hide();
        }
    });

    //图片
    var h = $("#b_img").css("height");
    $("#img_content").css("height",h);
})