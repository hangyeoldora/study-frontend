<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tour-project</title>
    <link rel="stylesheet" href="./css/normalize.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/9.0.5/swiper-bundle.css" />
    <style>
        #map {
            height: 800px;
        }
    </style>
</head>

<body>
    <jsp:include page="component/header.jsp"></jsp:include>
            <section class="culture-banner-section">
                <div class="inner">
                    <p class="main-title">문화<span class="emph-text">&</span>축제</p>
                    <div class="culture-banner-container">
                        <figure class="main-banner">
                            <img src="./imgs/busan-firework.jpg" alt="부산불꽃축제">
                        </figure>
                    </div>
                </div>
            </section>
            <section class="culture-present-section">
                <div class="inner">
                    <p class="present-title"><span class="emph-text">부산을 대표하는</span>&nbsp;문화&축제</p>
                    <div class="culture-present-container flex justify-between">
                        <div class="culture-present-card">
                            <img src="./imgs/present_haeundae.jpg" alt="문화&축제 대표 이미지" />
                            <p>해운대빛축제</p>
                            <p>해운대해수욕장, 해운대광장(구남로)</p>
                        </div>
                        <div class="culture-present-card">
                            <img src="./imgs/chosun.jpg" alt="문화&축제 대표 이미지" />
                            <p>조선통신사</p>
                            <p>부산광역시 중구 용두산길 35-26 용두산공원</p>
                        </div>
                        <div class="culture-present-card">
                            <img src="./imgs/international-movie-festiaval.jpg" alt="문화&축제 대표 이미지" />
                            <p>부산국제영화제</p>
                            <p>2023년 04월 13일</p>
                        </div>
                        <div class="culture-present-card">
                            <img src="./imgs/christmas.jpg" alt="문화&축제 대표 이미지" />
                            <p>크리스마스축제</p>
                            <p>부산 중구 광복동2가</p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="culture-slider-section">
                <div class="inner">
                    <div class="culture-slider-container flex justify-between">
                        <p class="slider-title"><span class="emph-text">올해의</span>&nbsp;부산 축제</p>
                        <!-- 축제 슬라이드 => swiper 사용 -->
                        <div class="swiper cultureSlider">
                            <div class="swiper-wrapper"></div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="culture-info-section">
                <div class="inner">
                    <div class="culture-info-container flex justify-between">
                        <div class="title-sep">
                            <p><span class="emph-text">check the</span><br />latest festival</p>
                        </div>
                        <ul class="list-sep">
                            <li class="flex justify-between">
                                <div class="title-wrap">
                                    <h3 class="festival-m-title">main title</h3>
                                </div>
                                <p class="culture-date">date</p>
                                <p class="culture-location">location</p>
                                <h3 class="culture-fit">fit</h3>
                                <p class="culture-url"><a href="#!">url</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
            <section class="culture-map-section">
                <div class="inner">

                    <div id="map"></div>
                </div>
            </section>

            <jsp:include page="component/footer.jsp"></jsp:include>

    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-ui-1.10.4.custom.min.js"></script>
    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".cultureSlider", {
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            slidesPerView: 3,
        });
    </script>
</body>
<script src="./js/index.js" defer="defer"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<script
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCKGDiMevgMXIQFgePVkbUrmqZ2z2iKYeo&callback=initMap&v=weekly"
    defer></script>
<!-- 구글 지도 -->
<script type="text/javascript">
    var festivalUrl = "http://apis.data.go.kr/6260000/FestivalService/getFestivalKr?ServiceKey=0lTocdsXSK4obDQqjM5QfIYgSGNTpOtc49pCGQx5pOr117fzHkizqB9v34zX%2BniOyJx%2Fs7oaBPFV48bJnjJhBg%3D%3D&pageNo=1&numOfRows=20&resultType=json";
    let festivalList = [];
    fetch(festivalUrl)
        .then((response) => response.json())
        .then((data) => {
            festivalList = (data.getFestivalKr.item);
            // 지도에 리스트 전달
            initMap(festivalList);
            // 축제 슬라이드에 리스트 전달
            addFestival(festivalList);
        }).catch((err) => console.log(err));
    // 지도 초기화 및 설정
    let map;
    function initMap() {
        const location = [
            { lat: 35.179554, lng: 129.075638 },
            { lat: 35.209393, lng: 129.175638 }
        ];
        const uluru = { lat: 35.179554, lng: 129.075638 };
        map = new google.maps.Map(document.getElementById("map"), {
            center: uluru,
            zoom: 12,
        });
        // 축제당 마커 생성
        festivalList.map((pin) => {
            const location = { lat: pin.LAT, lng: pin.LNG };
            const marker = new google.maps.Marker({
                position: location,
                map: map,
            });
        });
        //
    }
    // 축제 슬라이드 추가 => swiper-wrapper
    function addFestival(){
        var $swiperWrapper=$('.swiper-wrapper');
        festivalList.map((list)=>{
            var $swiperSlide=$('<div/>').html(
                "<div class=\"flex column\">"
                +"<img src=\""+list.MAIN_IMG_NORMAL+"\" alt=\"슬라이드 이미지\" />"
                +"<div class=\"festival-info\">"
                +"<p class=\"festival-name\">"+list.TITLE+"</p>"
                +"<p class=\"festival-sub-name\">"+list.SUBTITLE+"</p>"
                +"<p class=\"festival-date\">"+list.USAGE_DAY_WEEK_AND_TIME+"</p>"
                +"</div>"
                +"</div>"
            );
            $swiperSlide.addClass('swiper-slide');
            $swiperWrapper.append($swiperSlide);
        });
    }
    window.initMap = initMap;
</script>
<!-- 문화가 있는 날 => ul -->
<script async type="text/javascript">
    const cultureUrl="http://apis.data.go.kr/6260000/BusanCultureDayService/getBusanCultureDay?ServiceKey=0lTocdsXSK4obDQqjM5QfIYgSGNTpOtc49pCGQx5pOr117fzHkizqB9v34zX%2BniOyJx%2Fs7oaBPFV48bJnjJhBg%3D%3D&pageNo=1&numOfRows=8&resultType=json";
    let $cultureUl=$('.list-sep');
    fetch(cultureUrl)
    .then((response)=>response.json())
    .then((data)=>{
        console.log(data.getBusanCultureDay.item);
        cultureList = data.getBusanCultureDay.item;
        cultureList.map((list)=>{
            if(list.dt_time=="")
                list.dt_time="홈페이지 참조";
            let li=$('<li/>').html(
                "<div class=\"title-wrap\">"
                +"<h3 class=\"festival-m-title\">"+ list.program_nm +"</h3>"
                +"</div>"
                +"<p class=\"culture-date\">"+list.dt_ymd+" / "+ list.dt_time +"</p>"
                +"<p class=\"culture-location\">"+list.place_nm+"</p>"
                +"<p class=\"culture-fit\">"+list.benefit+"</p>"
                +"<p class=\"culture-url\"><a target=\"_blank\"href=\""+ list.url +"\">"+"홈페이지</a></p>"
            );
            li.addClass("flex justify-between");
            $cultureUl.append(li);
        })
    }).catch((err)=>console.log(err));
</script>
</body>

</html>