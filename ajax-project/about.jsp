<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tour-project</title>
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/9.0.5/swiper-bundle.css" />
    <script src="https://cdn.jsdelivr.net/npm/i18next@21.6.10/i18next.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-i18next@1.2.1/jquery-i18next.min.js"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/i18next-browser-languagedetector@6.1.3/i18nextBrowserLanguageDetector.min.js"></script>
    <style>
        #map {
            height: 800px;
        }
    </style>
</head>

<body>
		<jsp:include page="component/header.jsp"></jsp:include>
            <section class="about-banner-section">
                <div class="inner">
                    <div class="about-banner-container">
                        <p class="main-title"><span class="emph-text">드넓은 바다와 자연 그리고 다양한 볼거리와 먹거리가 있는</span>&nbsp;대한민국
                            최고 아름다운 문화&middot;관광 도시 '부산'</p>
                        <hr />
                        <figure class="main-banner">
                            <img class="main-banner" src="./imgs/chungsapo.jpg" alt="청사포, 미포 사진">
                        </figure>
                    </div>
                </div>
            </section>
            <section class="about-info-section">
                <div class="inner">
                    <div class="about-info-container flex justify-between">
                        <div class="title-sep">
                            <p>오늘의 부산</p>
                        </div>
                        <figure class="img-sep">
                            <img src="./imgs/skywalk.jpg" alt="">
                        </figure>
                        <div class="content-sep flex justify-between">
                            <div class="left-wrap flex column justify-between">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce mollis gravida ex vel
                                    fermentum. Nunc viverra mauris ac arcu vestibulum semper. Morbi efficitur nibh
                                    justo, dignissim pellentesque magna laoreet vel.</p>
                                <ul class="info">
                                    <li>면적:</li>
                                    <li>인구:</li>
                                    <li>기후:</li>
                                    <li>특산품:</li>
                                </ul>
                            </div>
                            <div class="right-wrap">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce mollis gravida ex vel
                                    fermentum. Nunc viverra mauris ac arcu vestibulum semper. Morbi efficitur nibh
                                    justo, dignissim pellentesque magna laoreet vel.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="about-video-section">
                <div class="inner">
                    <div class="about-video-container flex justify-between">
                        <p class="video-title">소개 영상<span clsas="emph-text"></span></p>
                        <!-- Swiper -->
                        <div class="swiper videoSlider">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <video src="./videos/seogu.webm" controls preload="metadata"></video>
                                    <div class="video-info">
                                        <span class="video-name">testing</span>
                                        <span class="video-source">asd</span>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <video src="./videos/seogu.webm" controls preload="metadata"></video>
                                    <div class="video-info flex justify-between">
                                        <span class="video-name">testing</span>
                                        <span class="video-source">asd</span>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <video src="./videos/seogu.webm" controls preload="metadata"></video>
                                    <div class="video-info flex justify-between">
                                        <span class="video-name">testing</span>
                                        <span class="video-source">asd</span>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <video src="./videos/seogu.webm" controls preload="metadata"></video>
                                    <div class="video-info flex justify-between">
                                        <span class="video-name">testing</span>
                                        <span class="video-source">asd</span>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="about-video-section">
                <div class="inner">

                    <div id="map"></div>
                </div>
            </section>

            <jsp:include page="component/footer.jsp"></jsp:include>
            
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-ui-1.10.4.custom.min.js"></script>
    <script src="./js/index.js" defer="defer"></script>

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".videoSlider", {
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            spaceBetween: 50,
            slidesPerView: 2
        });
    </script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCKGDiMevgMXIQFgePVkbUrmqZ2z2iKYeo&callback=initMap&v=weekly"
        defer></script>
    <script type="text/javascript">
        let map;
        function initMap() {
            const uluru = { lat: 35.179554, lng: 129.075638 };
            map = new google.maps.Map(document.getElementById("map"), {
                center: uluru,
                zoom: 12,
            });
            const marker = new google.maps.Marker({
                position: uluru,
                map: map,
            });
        }
        window.initMap = initMap;
    </script>
</body>

</html>