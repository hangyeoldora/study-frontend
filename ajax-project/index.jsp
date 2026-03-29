<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<title>tour project</title>
<%
	String root = request.getContextPath();
	//System.out.println(session.getAttribute("userID"));
%>
</head>
<body>	
			<jsp:include page="component/header.jsp"></jsp:include>
			<section class="slider-section">
                <div class="slider-container">
                    <div class="slider">
                        <figure class="slider-img">
                            <img src="./imgs/haeundae.jpg" alt="">
                            <div class="slider-content-wrap">
                                <div class="inner">
                                    <h1>천혜의 바다를 가진 아름다운 부산</h1>
                                </div>
                            </div>
                        </figure>
                        <figure class="slider-img">
                            <img src="./imgs/flower.jpg" alt="">
                            <div class="slider-content-wrap">
                                <div class="inner">
                                    <h1>천혜의 바다를 가진 아름다운 부산</h1>
                                </div>
                            </div>
                        </figure>
                        <figure class="slider-img">
                            <img src="./imgs/img-3.jpg" alt="">
                        </figure>
                        <figure class="slider-img">
                            <img src="./imgs/img-4.jpg" alt="">
                        </figure>
                    </div>
                </div>
            </section>
            <section class="busan-info-section">
                <div class="inner">
                    <div class="busan-info-container flex justify-between">
                        <div class="left-wrap flex column justify-center">
                            <p class="section-division-title"><span class="emph-text">about</span>&nbsp;busan</p>
                            <h1>대한민국 '제 2의 도시'<p>부산</p>
                            </h1>
                            <p class="busan-info-content">&nbsp;인구 346만의 대한민국 제 2의 도시이자 세계로 통하는 대한민국의 관문인 부산은 온난한 기후와
                                수려한 환경 속에서 열정적이면서도 따듯한 기질을
                                길러온 시민들이
                                가꾸어온 도시입니다. 부산은 한국전쟁 이후 눈부신 발전을 거듭해 지금은 세계적인 슈퍼항만을 가진 해양물류의 중심도시이자 세계로 통하는 유라시아 대륙의
                                관문도시로
                                성장하였습니다. 또한 각종 대규모 국제행사의 성공적인 개최로 세계 속의 부산으로 당당히 어깨를 나란히 하며 세계인들의 발걸음이 끊이지 않는 관광도시로 명성을
                                더하고
                                있습니다. 특히 부산은 영화 · 영상 · 콘텐츠 · 금융 등 미래를 앞서가는 산업체계의 구축과 환경을 생각하는 녹색도시로서의 면모를 더해가는 풍요의 도시로
                                도약하고
                                있습니다.
                            </p>
                            <a href="#!">자세히 알아보기 ></a>
                        </div>
                        <div class="right-wrap flex justify-between">
                            <div class="img-left-container flex align-center">
                                <figure>
                                    <img src="./imgs/haeundae.jpg" alt="">
                                    <div class="img-wrapper"></div>
                                    <p>해운대</p>
                                </figure>
                            </div>
                            <div class="img-right-container flex column">
                                <figure>
                                    <img src="./imgs/pork.jpg" alt="">
                                    <div class="img-wrapper">
                                    </div>
                                    <p>삼겹살</p>
                                </figure>
                                <figure>
                                    <img src="./imgs/yongdo.jpg" alt="">
                                    <div class="img-wrapper">
                                    </div>
                                    <p>용두산공원</p>

                                </figure>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="busan-place-section">
                <div class="inner">
                    <div class="busan-place-container flex justify-between">
                        <div class="place-left-wrap flex column justify-center">
                            <p class="section-division-title"><span class="emph-text">popular</span>&nbsp;place</p>
                            <p>부산만이 간직한 아름다운 장소에서 추억을 만들어보세요</p>

                        </div>
                        <div class="place-right-wrap">
                            <div class="place-slider">
                                <div>
                                    <img src="./imgs/Huinnyeoul.png" alt="">
                                    <div class="flex justify-between align-center">
                                        <p>흰여울 카페거리</p>
                                        <a href="#!">자세히 보기</a>
                                    </div>
                                </div>
                                <div>
                                    <img src="./imgs/busan_park.JPG" alt="">
                                    <div class="flex justify-between align-center">
                                        <p>부산시민공원</p>
                                        <a href="#!">자세히 보기</a>
                                    </div>
                                </div>
                                <div>
                                    <img src="./imgs/beom-temple.JPG" alt="">
                                    <div class="flex justify-between align-center">
                                        <p>범어사</p>
                                        <a href="#!">자세히 보기</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="busan-course-section">
                <div class="inner">
                    <div class="busan-course-container flex justify-between">
                        <p><a href="#!">더보기</a></p>
                        <p class="section-division-title"><span class="emph-text">recommend</span>&nbsp;course</p>
                    </div>
                </div>
            </section>
            <section class="busan-food-section">
                <div class="inner">
                    <div class="busan-food-container flex justify-between">
                        <div class="food-left-wrap flex column justify-center">
                            <p class="section-division-title"><span class="emph-text">recommend</span>&nbsp;restaurant
                            </p>
                            <p>찾아 이 방황하였으며, 투명하되 속에 눈이 과실이 말이다. 커다란 심장의 그들의 것이다.</p>
                            <div class="food-left-sep flex column justify-between">
                                <figure>
                                    <img src="./imgs/gukbap.JPG" alt="음식이미지">
                                </figure>
                                <div class="flex justify-between">
                                    <figure>
                                        <img src="./imgs/pajeon.jpg" alt="음식이미지">
                                    </figure>
                                    <figure>
                                        <img src="./imgs/hodduck.jpg" alt="음식이미지">
                                    </figure>
                                </div>
                            </div>
                        </div>
                        <div class="food-right-wrap flex column justify-between">
                            <figure>
                                <img src="./imgs/ggomjang.JPG" alt="음식이미지">
                            </figure>
                            <figure>
                                <img src="./imgs/milmyeon.jpg" alt="음식이미지">
                            </figure>
                        </div>
                    </div>
                    <a href="#!">view all</a>
                </div>
            </section>
            <section class="busan-festival-section">
                <div class="inner">
                    <div class="busan-festival-container flex justify-between">
                        <p class="section-division-title"><span class="emph-text">latest</span>&nbsp;festival</p>
                        <ul class="festival-list-wrap flex column">
                            <p><a href="">더보기</a></p>
                        </ul>
                    </div>
                </div>
            </section>
			<jsp:include page="component/footer.jsp"></jsp:include>

	<script type="text/javascript">
		$duration = 300;
	    var $translator=$('.translator');
	    var $modal= $('#translate-modal');
	    $translator.click(function(){
	        $modal.fadeIn($duration).addClass('active');
	    });
	    $modal.find('.close-btn').click(function(){
	        $modal.removeClass('active');
	        $modal.css({display:'none'});
	    });
	    $('.right-wrap').find('figure').mouseover(function(){
	        $(this).find('.img-wrapper').stop().animate({opacity:0.4},$duration);
	        $(this).find('p').stop().fadeIn($duration).addClass('active');
	    }).mouseout(function(){
	        $(this).find('.img-wrapper').stop().animate({opacity:0},$duration);
	        $(this).find('p').stop().fadeIn($duration).removeClass('active');
	    })
	</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/fontawesome.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <!-- bxSlider -->
    <script type="text/javascript">
        $(function () {
            var $placeSliderWidth = $('place-right-wrap').width();
            var $width = ($placeSliderWidth);
            $('.slider').bxSlider({
                auto: false,
                pager: true,
                controls: true,
                stopAutoOnClick: true,
            });
            $('.place-slider').bxSlider({
                minSlides: 2,
                maxSlides: 2,
                moveSlides: 1,
                minSlides: 2,
                auto: false,
                pager: false,
                controls: true,
                stopAutoOnClick: true,
                slideWidth: 590,
                slideMargin: 20,
            });
        });
    </script>
    <!-- 기본 js 파일 -->
    <script src="./js/index.js" defer="defer"></script>
    <!-- 축제정보서비스 -->
    <script async type="text/javascript">
        fetch('http://apis.data.go.kr/6260000/FestivalService/getFestivalKr?serviceKey=0lTocdsXSK4obDQqjM5QfIYgSGNTpOtc49pCGQx5pOr117fzHkizqB9v34zX%2BniOyJx%2Fs7oaBPFV48bJnjJhBg%3D%3D&pageNo=1&numOfRows=4&resultType=json')
            .then(response => response.json())
            .then((data) => {
                let arr = data.getFestivalKr.item;
                var festivalWrap = $('ul.festival-list-wrap');
                var subtitle = "";
                arr.map((list) => {
                    if (list.SUBTITLE == "")
                        list.SUBTITLE = "FESTIVAL";
                    var li = $('<li/>').html(
                        "<div class=\"festival-title-sec flex column justify-between\">"
                        + "<p class=\"festival-date\">" + list.PLACE + "</p>"
                        + "<div>"
                        + "<p>" + list.USAGE_DAY_WEEK_AND_TIME + "</p>"
                        + "<p>" + list.GUGUN_NM + "</p>"
                        + "</div>"
                        + "</div>"
                        + "<figure class=\"festival-img-sec\">"
                        + "<img/ src=" + list.MAIN_IMG_NORMAL + "/>"
                        + "</figure>"
                        + "<div class=\"festival-content-sec\">"
                        + "<p class=\"subtitle\">" + list.SUBTITLE + "</p>"
                        + "<h3>" + list.TITLE + "</h3>"
                        + "<p class=\"festival-spec\">" + list.ITEMCNTNTS + "</p>"
                        + "<a target=\"_blank\"href=\"" + list.HOMEPAGE_URL + "\">READ</a>"
                        + "</div>"
                    );
                    li.addClass('flex justify-between');
                    festivalWrap.append(li);
                });
            })
    </script>
    <!-- 코스 정보 서비스 -->
    <script async type="text/javascript">
        let $courseUrl = "http://apis.data.go.kr/6260000/WalkingService/getWalkingKr?ServiceKey=0lTocdsXSK4obDQqjM5QfIYgSGNTpOtc49pCGQx5pOr117fzHkizqB9v34zX%2BniOyJx%2Fs7oaBPFV48bJnjJhBg%3D%3D&pageNo=1&numOfRows=4&resultType=json";
        let courseList = [];
        fetch($courseUrl)
            .then((response) => response.json())
            .then((data) => {
                courseList = data.getWalkingKr.item;
                addCourse(courseList);
            })
        let addCourse = function () {
            let $courseContainer = $('.busan-course-container');
            courseList.map((list) => {
                let $card = $('<div/>').html(
                    "<div class=\"course-img-wrap\">"
                    + "<img class=\"course-img\" src=\"" + list.MAIN_IMG_THUMB + "\"alt=\"추천 코스 이미지\"/>"
                    + "<div class=\"course-img-tag\">"
                    + "<span>" + list.PLACE + "</span>"
                    + "</div>"
                    + "</div>"
                    + "<p>"
                    + "<img src=\"./imgs/icons/marker-icon.png\" alt=\"마커 이미지\" />"
                    + "&nbsp;"
                    + list.TITLE
                    + "</p>"
                );
                $card.addClass('course-card');
                $courseContainer.append($card);
            })
        }
    </script>
</body>
</html>