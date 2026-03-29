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
            <section class="place-banner-section">
                <div class="inner">
                    <p class="main-title"><span class="emph-text">편안함과 최고의 추억</span>을 선사해주는 부산</p>
                    <div class="place-banner-container">
                        <figure class="main-banner">
                            <img src="./imgs/Huinnyeoul2.jpg" alt="부산불꽃축제">
                        </figure>
                    </div>
                </div>
            </section>
            <section class="place-present-section">
                <div class="inner">
                    <p class="main-title"><span class="emph-text">명실상부</span>&nbsp;부산 대표 여행지 4곳</p>
                    <div class="place-present-container">
                        <div class="place-present-card flex justify-between">
                            <div class="left-wrap">
                                <figure>
                                    <img class="place-present-img" src="./imgs/haeundae.jpg" alt="부산 대표 여행지 이미지" />
                                </figure>
                            </div>
                            <div class="right-wrap">
                                <div class="place-present-content flex column justify-center">
                                    <div class="flex">
                                        <p>01</p>
                                        <span>해운대</span>
                                    </div>
                                    <p>부산을 대표하는 관광지로 여름이면 전국에서 온 피서객으로 붐비는 곳이에요. 해변이 넓고 수심이 얕으며 주변에 음식점과 오락시설이 많아 인기가 많죠. 일급 호텔들이 많아 국제행사도 자주 열리는 곳이에요. 해수욕장 개장 시기에 맞춰 방문하면 각종 축제의 열기와 볼거리를 즐길 수 있어요. 밤에는 아름다운 야경과 다채로운 버스킹을 즐길 수 있어요. 달맞이고개에는 모던한 카페와 갤러리가 모여 있고 봄이면 벚꽃이 아름다워요. 근처에 동백섬, 아쿠아리움, 벡스코 등 볼거리가 많아요.</p>
                                    <a href="#!">자세히 보기</a>
                                </div>
                            </div>
                        </div>
                        <div class="place-present-card flex row-reverse justify-between">
                            <div class="left-wrap">
                                <figure>
                                    <img class="place-present-img" src="./imgs/egidaepng" alt="부산 대표 여행지 이미지" />
                                </figure>
                            </div>
                            <div class="right-wrap">
                                <div class="place-present-content flex column justify-center">
                                    <div class="flex">
                                        <p>02</p>
                                        <span>이기대수변공원</span>
                                    </div>
                                    <p>멋진 산책 코스를 찾는다면 여기가 최고이죠. 남구 용호동에 있는 바다와 면한 공원이에요. 해안 산책로가 있어 바다의 절경을 즐기며 산책하기 좋아요. 이 해안 산책로는 동해안을 잇는 해파랑길 770km의 시작점이기도 하죠. 멀리 광안대교, 해운대, 오륙도를 볼 수 있어요. 산책로 끝에 있는 오륙도 스카이워크를 걸어 보세요. 투명 유리 위를 걸어 바다 위에서 오륙도를 전망하는 짜릿함을 느낄 수 있어요. 해안 산책로는 생각보다 힘든 코스이니 걷기 좋은 신발을 꼭 준비하세요.</p>
                                    <a href="#!">자세히 보기</a>
                                </div>
                            </div>
                        </div>
                        <div class="place-present-card flex justify-between">
                            <div class="left-wrap">
                                <figure>
                                    <img class="place-present-img" src="./imgs/gamcheon.jpg" alt="부산 대표 여행지 이미지" />
                                </figure>
                            </div>
                            <div class="right-wrap">
                                <div class="place-present-content flex column justify-center">
                                    <div class="flex">
                                        <p>03</p>
                                        <span>감천문화마을</span>
                                    </div>
                                    <p>6.25 피난민의 삶의 터전으로 시작되어 오늘에 이르기까지 부산의 역사를 그대로 간직하고 있는 곳이에요. 낙후된 달동네였지만 문화예술을 가미한 도심 재생사업으로 국내외 관광 명소가 되었죠. 산비탈을 따라 알록달록한 집들이 모여 있는 이국적 풍경으로 ‘한국의 산토리니’라는 별명을 가지고 있어요. 마을을 천천히 걸으며 과거로의 시간 여행을 해보세요. 다양한 포토 존이 있어 추억에 남을 사진 찍기에 좋아요. 안내소에서 지도를 구해 스탬프를 모으는 것도 잊지 마세요.</p>
                                    <a href="#!">자세히 보기</a>
                                </div>
                            </div>
                        </div>
                        <div class="place-present-card flex row-reverse justify-between">
                            <div class="left-wrap">
                                <figure>
                                    <img class="place-present-img" src="./imgs/movie.jpg" alt="부산 대표 여행지 이미지" />
                                </figure>
                            </div>
                            <div class="right-wrap">
                                <div class="place-present-content flex column justify-center">
                                    <div class="flex">
                                        <p>04</p>
                                        <span>부산 영화체험박물관</span>
                                    </div>
                                    <p>아이와 함께 가볼 만한 곳을 찾는다면 영화체험박물관을 가보세요. 용두산 뒤편에 자리한 국내 최초의 영화 전문 전시체험 시설로 아이들이 좋아해요. 영화의 역사와 제작 과정을 살펴볼 수 있고 이색 영화체험, VR 체험, 영화 더빙 등 다양한 체험도 가능해요. 영화를 모티브로 한 어린이 놀이공간도 있죠. 같은 건물에 있는 트릭아이 뮤지엄은 데이트 코스로 인기 있는 곳으로 재밌는 사진 찍기에 좋아요.</p>
                                    <a href="#!">자세히 보기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="place-info-section">
                <div class="inner">
                    <div class="place-info-container flex justify-between">
                        <div class="title-sep">
                            <p><span class="emph-text">check the</span><br />famous place</p>
                        </div>
                        <div>
                            <ul class="list-sep">
                                <li class="flex justify-between">
                                    <div class="title-wrap">
                                        <h3 class="place-m-title">이미지</h3>
                                    </div>
                                    <div class="place-info">
                                        <p>정보</p>
                                    </div>
                                    <p class="place-fit">fit</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
<!--             <section class="culture-map-section">
                <div class="inner">

                    <div id="map"></div>
                </div>
            </section> -->
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
    <script src="./js/index.js" defer="defer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/js/all.min.js"></script>
    <script async type="text/javascript">
        const placeUrl = "http://apis.data.go.kr/6260000/AttractionService/getAttractionKr?ServiceKey=0lTocdsXSK4obDQqjM5QfIYgSGNTpOtc49pCGQx5pOr117fzHkizqB9v34zX%2BniOyJx%2Fs7oaBPFV48bJnjJhBg%3D%3D&pageNo=1&numOfRows=8&resultType=json";
        let $placeUl = $('.list-sep');
        let placeList = [];
        fetch(placeUrl)
            .then((response) => response.json())
            .then((data) => {
                placeList = data.getAttractionKr.item;
                placeList.map((list) => {
                    let $li = $('<li/>').html(
                        "<div class=\"title-wrap\">"
                        + "<img class=\"place-m-title\" src=\"" + list.MAIN_IMG_NORMAL + "\" />"
                        + "</div>"
                        + "<div class=\"place-info flex column justify-center\">"
                        + "<p class=\"title\">위치&nbsp;:&nbsp;\"" + list.MAIN_TITLE + "\"</p>"
                        + "<p class=\"time\"><b>시간&nbsp;:&nbsp;</b>" + list.USAGE_DAY_WEEK_AND_TIME + "</p>"
                        + "<p class=\"traffic\">대중교통&nbsp;:&nbsp;" + list.TRFC_INFO + "</p>"
                        + "</div>"
                        + "<p class=\"place-fit\">" + list.USAGE_AMOUNT + "</p>"
                    );
                    $li.addClass('flex justify-between');
                    $placeUl.append($li);
                })
            }).catch((err) => console.log(err));
    </script>
</body>

</html>