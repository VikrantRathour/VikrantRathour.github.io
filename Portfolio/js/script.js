$(document).ready(function(){
    $(".hamburger-btn .fa-times").hide();

    $(".hamburger-btn .fa-bars").click(function(){
        $(this).hide();
        $(".hamburger-btn .fa-times").show();
        $(".mob ul").addClass("active");
    });
    $(".hamburger-btn .fa-times").click(function(){
        $(this).hide();
        $(".hamburger-btn .fa-bars").show();
        $(".mob ul").removeClass("active");
    });

    // $(".box1").hover(function(){
    //     $("body").css(backgroundColor,"red");
    // });
});
function box(){
    document.body.style.background = 'aqua';
}
function box1(){
    document.body.style.background = 'linear-gradient(#03A9F4,#E91E36)';
}
function box2(){
    document.body.style.background = 'linear-gradient(#FFC107,#19fd36)';
}
function box3(){
    document.body.style.background = 'linear-gradient(#FFC107,#E91E36)';
}