$(function(){
    var $header = $('#header');
    var $slider = $('.bx-wrapper');
    var $duration = 300;
    var currentSliderHeight = $slider.height();
    var $busanInfoImg = $('.busan-info-section .right-wrap figure');

    // 스크롤 시, 헤더 부분 변경
    //$(window).scroll(function(){
    //    if($(this).scrollTop()>=(currentSliderHeight-470)){
    //        $header.addClass('scroll');

     //   } else {
     //       $header.removeClass('scroll');

     //   }
   // });
    $busanInfoImg.each(function(){
    }).mouseover(function(){
        $(this).find('div').stop().animate({opacity:0.4},$duration);
    }).mouseout(function(){
        $(this).find('div').stop().animate({opacity:0},$duration);
    });

    var $wrap=$('.wrap');
    var $translator=$('.translator');
    var $modal= $('#translate-modal');
    $translator.click(function(){
        $modal.fadeIn(500).addClass('active');
    });
    $modal.click(function(){
        $modal.fadeOut(300).removeClass('active');
    }).find('close-btn').click(function(){
        $modal.fadeOut(300).removeClass('active');
    })
});