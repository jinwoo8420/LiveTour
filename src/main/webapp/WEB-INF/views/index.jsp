<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-detection" content="telephone=no" />
<meta name="description" content="라이브투어 :: 스마트한 라이브 여행">
<meta name="keywords"
	content="라이브투어, Live Tour, 스마트 여행, 라이브 여행, 전국 여행, 여행 추천, 라이브 자연, 실시간 라이브 여행, 인기 여행, 추천 여행, 언텍트 힐링, 자연, 힐링, 관광명소, 음식, 숙박, 맞춤형 여행 정보">
<title>라이브투어 :: 스마트한 라이브 여행</title>

<!-- CSS -->
<link href="${rootPath}/static/css/bootstrap.css" rel="stylesheet">
<link href="${rootPath}/static/css/style.css" rel="stylesheet">

<script>
	const rootPath = "${rootPath}"
</script>

<script src="${rootPath}/static/js/popular_button.js?ver=4"></script>

<!-- Favicons -->
<link rel="apple-touch-icon" href="${rootPath}/static/brand/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="${rootPath}/static/brand/favicon.png">

<!-- Facebook -->
<meta property="og:url" content="">
<meta property="og:title" content="라이브투어">
<meta property="og:description" content="스마트한 라이브 여행">
<meta property="og:image" content="${rootPath}/static/brand/social.png">
<meta property="og:image:type" content="image/png">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">

<style>
.clicked {
	color: #fff !important;
	background-color: rgb(104 155 216) !important;
	font-weight: 600;
}

.area-btn:hover {
	background-color:#93b9ec69;
}
</style>

</head>

<body>
	<!-- Navigation -->
	<nav class="navbar fixed-top navbar-light">
		<a href="javascript:history.back();" class="nav-left">
			<img src="${rootPath}/static/img/svg/navbar-back.svg" alt="뒤로가기" />
		</a>
		<span class="navbar-title">
			<img src="${rootPath}/static/img/svg/navbar-logo.svg" alt="라이브투어" />
		</span>
		<a href="search.html">
			<img src="${rootPath}/static/img/svg/navbar-search.svg" alt="Search" />
		</a>
	</nav>
	<!-- // Navigation -->

	<!-- Visual Carousel -->
	<div id="carousel-visual" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carousel-visual" data-slide-to="0" class="active"></li>
			<li data-target="#carousel-visual" data-slide-to="1"></li>
			<li data-target="#carousel-visual" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="${rootPath}/static/img/slide1.jpg" class="d-block w-100" alt="">
			</div>
			<div class="carousel-item">
				<img src="${rootPath}/static/img/slide1.jpg" class="d-block w-100" alt="">
			</div>
			<div class="carousel-item">
				<img src="${rootPath}/static/img/slide1.jpg" class="d-block w-100" alt="">
			</div>
		</div>
	</div>
	<!--// Visual Carousel -->
	<div class="clearfix"></div>

	<!-- Quick Link -->
	<div class="container">
		<h4 class="mb-1">
			스마트한
			<span class="text-link text-danger">라이브</span>
			여행
		</h4>
		<p class="mt-0">전국 방방곡곡 아름다운 자연을 실시간 라이브로 느껴보세요!</p>
	</div>
	<!-- // Quick Link -->

	<!-- Filter -->
	<div class="filterWrap mt-2">
		<div class="slideList location_btn">
			<ul class="listWrap">

				<!-- <button class="area-btn filterList" type="button" >전체</button> -->
				<li class="item"><button class="area-btn seoul_btn clicked filterList" type="button"
						data-tour_location="1" data-food_location="1" data-lodgment_location="1">서울</button></li>
				<li class="item"><button class="area-btn incheon_btn filterList" type="button"
						data-tour_location="2" data-food_location="2" data-lodgment_location="2">인천</button></li>
				<li class="item"><button class="area-btn daejeon_btn filterList" type="button"
						data-tour_location="3" data-food_location="3" data-lodgment_location="3">대전</button></li>
				<li class="item"><button class="area-btn daegu_btn filterList" type="button"
						data-tour_location="4" data-food_location="4" data-lodgment_location="4">대구</button></li>
				<li class="item"><button class="area-btn gwangju_btn filterList" type="button"
						data-tour_location="5" data-food_location="5" data-lodgment_location="5">광주</button></li>
				<li class="item"><button class="area-btn busan_btn filterList" type="button"
						data-tour_location="6" data-food_location="6" data-lodgment_location="6">부산</button></li>
				<li class="item"><button class="area-btn ulsan_btn filterList" type="button"
						data-tour_location="7" data-food_location="7" data-lodgment_location="7">울산</button></li>
				<li class="item"><button class="area-btn sejong_btn filterList" type="button"
						data-tour_location="8" data-food_location="8" data-lodgment_location="8">세종</button></li>
				<li class="item"><button class="area-btn gyeonggi_btn filterList" type="button"
						data-tour_location="31" data-food_location="31" data-lodgment_location="31">경기</button></li>
				<li class="item"><button class="area-btn gangwon_btn filterList" type="button"
						data-tour_location="32" data-food_location="32" data-lodgment_location="32">강원</button></li>
				<li class="item"><button class="area-btn chungbuk_btn filterList" type="button"
						data-tour_location="33" data-food_location="33" data-lodgment_location="33">충북</button></li>
				<li class="item"><button class="area-btn chungnam_btn filterList" type="button"
						data-tour_location="34" data-food_location="34" data-lodgment_location="34">충남</button></li>
				<li class="item"><button class="area-btn gyeongbuk_btn filterList" type="button"
						data-tour_location="35" data-food_location="35" data-lodgment_location="35">경북</button></li>
				<li class="item"><button class="area-btn gyeongnam_btn filterList" type="button"
						data-tour_location="36" data-food_location="36" data-lodgment_location="36">경남</button></li>
				<li class="item"><button class="area-btn jeonbuk_btn filterList" type="button"
						data-tour_location="37" data-food_location="37" data-lodgment_location="37">전북</button></li>
				<li class="item"><button class="area-btn jeonnam_btn filterList" type="button"
						data-tour_location="38" data-food_location="38" data-lodgment_location="38">전남</button></li>
				<li class="item"><button class="area-btn jeju_btn filterList" type="button"
						data-tour_location="39" data-food_location="39" data-lodgment_location="39">제주</button></li>

			</ul>
		</div>
	</div>
	<!--// Filter -->
	<div class="clearfix"></div>

	<!-- Content -->
	<div class="container nopadding">
		<!-- 추천 라이브 -->
		<h5>
			<a href="${rootPath}/category/recommend">
				추천 라이브<i class="bi bi-plus bi-md ml-1"></i>
			</a>
		</h5>
		<div class="slideList">
			<ul class="listWrap">
				<li class="item"><a href="${rootPath}/detail/detail">
						<div class="imgWrap">
							<span class="play-live">
								<small class="sr-only">LIVE</small>
							</span>
							<img src="${rootPath}/static/img/sample/photo1.jpg" class="img-fluid" alt="">
						</div>
						<div class="InfoWrap">
							<h6>신선이 산다는 아름다운 풍경 청산도</h6>
							<p>전라남도 완도군 청산면</p>
						</div>
					</a></li>
				<li class="item"><a href="${rootPath}/detail/detail">
						<div class="imgWrap">
							<span class="play-live">
								<small class="sr-only">LIVE</small>
							</span>
							<img src="${rootPath}/static/img/sample/photo2.jpg" class="img-fluid" alt="">
						</div>
						<div class="InfoWrap">
							<h6>남원시 구룡폭포</h6>
							<p>전라북도 남원시 주천면</p>
						</div>
					</a></li>
				<li class="item"><a href="${rootPath}/detail/detail">
						<div class="imgWrap">
							<span class="play-live">
								<small class="sr-only">LIVE</small>
							</span>
							<img src="${rootPath}/static/img/sample/photo6.jpg" class="img-fluid" alt="">
						</div>
						<div class="InfoWrap">
							<h6>남원시 구룡폭포</h6>
							<p>전라북도 남원시 주천면</p>
						</div>
					</a></li>
				<li class="item"><a href="${rootPath}/detail/detail">
						<div class="imgWrap">
							<span class="play-live">
								<small class="sr-only">LIVE</small>
							</span>
							<img src="${rootPath}/static/img/sample/photo7.jpg" class="img-fluid" alt="">
						</div>
						<div class="InfoWrap">
							<h6>신선이 산다는 아름다운 풍경 청산도</h6>
							<p>전라남도 완도군 청산면</p>
						</div>
					</a></li>
				<li class="item"><a href="${rootPath}/detail/detail">
						<div class="imgWrap">
							<span class="play-live">
								<small class="sr-only">LIVE</small>
							</span>
							<img src="${rootPath}/static/img/sample/photo8.jpg" class="img-fluid" alt="">
						</div>
						<div class="InfoWrap">
							<h6>남원시 구룡폭포</h6>
							<p>전라북도 남원시 주천면</p>
						</div>
					</a></li>
				<li class="item more"><a href="${rootPath}/category/recommend" class="moreLink">
						<div class="inner">
							<span>더보기</span>
						</div>
					</a></li>
			</ul>
		</div>
		<!--// 추천 라이브 -->

		<!-- 힐링 테마여행 -->
		<div class="mainBgWrap">
			<h5>
				<a href="${rootPath}/category/recommend">
					힐링 테마여행<i class="bi bi-plus bi-md ml-1"></i>
				</a>
			</h5>
			<div class="slideList">
				<ul class="listWrap cardbox">
					<li class="item"><a href="${rootPath}/detail/detail">
							<div class="imgWrap">
								<img src="${rootPath}/static/img/sample/photo3.jpg" class="img-fluid" alt="">
							</div>
							<div class="InfoWrap">
								<h6>천사대교 따라 떠나는 신안여행코스</h6>
							</div>
						</a></li>
					<li class="item"><a href="${rootPath}/detail/detail">
							<div class="imgWrap">
								<img src="${rootPath}/static/img/sample/photo4.jpg" class="img-fluid" alt="">
							</div>
							<div class="InfoWrap">
								<h6>제주 봄의 전령 유채꽃</h6>
							</div>
						</a></li>
					<li class="item"><a href="${rootPath}/detail/detail">
							<div class="imgWrap">
								<img src="${rootPath}/static/img/sample/photo5.jpg" class="img-fluid" alt="">
							</div>
							<div class="InfoWrap">
								<h6>천사대교 따라 떠나는 신안여행코스</h6>
							</div>
						</a></li>
					<li class="item"><a href="${rootPath}/detail/detail">
							<div class="imgWrap">
								<img src="${rootPath}/static/img/sample/photo6.jpg" class="img-fluid" alt="">
							</div>
							<div class="InfoWrap">
								<h6>제주 봄의 전령 유채꽃</h6>
							</div>
						</a></li>
					<li class="item"><a href="${rootPath}/detail/detail">
							<div class="imgWrap">
								<img src="${rootPath}/static/img/sample/photo7.jpg" class="img-fluid" alt="">
							</div>
							<div class="InfoWrap">
								<h6>천사대교 따라 떠나는 신안여행코스</h6>
							</div>
						</a></li>
					<li class="item more"><a href="${rootPath}/category/recommend" class="moreLink">
							<div class="inner">
								<span>더보기</span>
							</div>
						</a></li>
				</ul>
			</div>
		</div>
		<!--// 힐링 테마여행 -->

		<!--  추천 명소  -->
		<h5>
			<a href="${rootPath}/category/recommend">
				추천 명소<i class="bi bi-plus bi-md ml-1"></i>
			</a>
		</h5>
		<div class="slideList popular_view">
		
		</div>
		<!--// 추천 명소 -->
		
		

		<!-- 광고배너 -->
		<div class="mainAdWrap">
			<h5>
				추천 맛집 &nbsp;<small class="text-primary"><strong>AD</strong></small>
			</h5>
			<div id="carouselRecommend" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselRecommend" data-slide-to="0" class="active"></li>
					<li data-target="#carouselRecommend" data-slide-to="1"></li>
					<li data-target="#carouselRecommend" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="card" onclick="document.location.href='${rootPath}/detail/detail-restaurant'">
							<div class="row no-gutters">
								<div class="cardimgWrap">
									<img src="${rootPath}/static/img/sample/photo7.jpg" class="img-fluid" alt="">
								</div>
								<div class="cardInfoWrap">
									<div class="card-body">
										<h6>지역 냄새 물씬 나는 남해 특산물 카페 & 맛집</h6>
										<p class="mb-1">
											<span class="text-grey">전남 신안군 흑산면</span>
										</p>
										<ul class="tag">
											<li>#남해여행</li>
											<li>#남해가볼만한곳</li>
											<li>#백년유자</li>
											<li>#열두척반상</li>
											<li>#남해맛집</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="card" onclick="document.location.href='${rootPath}/detail/detail-restaurant'">
							<div class="row no-gutters">
								<div class="cardimgWrap">
									<img src="${rootPath}/static/img/sample/photo8.jpg" class="img-fluid" alt="">
								</div>
								<div class="cardInfoWrap">
									<div class="card-body">
										<h6>지역 냄새 물씬 나는 남해 특산물 카페 & 맛집</h6>
										<p class="mb-1">
											<span class="text-grey">전남 신안군 흑산면</span>
										</p>
										<ul class="tag">
											<li>#남해여행</li>
											<li>#남해가볼만한곳</li>
											<li>#백년유자</li>
											<li>#열두척반상</li>
											<li>#남해맛집</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="card" onclick="document.location.href='${rootPath}/detail/detail-restaurant'">
							<div class="row no-gutters">
								<div class="cardimgWrap">
									<img src="${rootPath}/static/img/sample/photo9.jpg" class="img-fluid" alt="">
								</div>
								<div class="cardInfoWrap">
									<div class="card-body">
										<h6>지역 냄새 물씬 나는 남해 특산물 카페 & 맛집</h6>
										<p class="mb-1">
											<span class="text-grey">전남 신안군 흑산면</span>
										</p>
										<ul class="tag">
											<li>#남해여행</li>
											<li>#남해가볼만한곳</li>
											<li>#백년유자</li>
											<li>#열두척반상</li>
											<li>#남해맛집</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--// 광고배너 -->

		<!-- Carousel Bann -->
		<div id="carousel-bann" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carousel-bann" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-bann" data-slide-to="1"></li>
				<li data-target="#carousel-bann" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="${rootPath}/static/img/sample/bann2.jpg" class="d-block w-100" alt="">
				</div>
				<div class="carousel-item">
					<img src="${rootPath}/static/img/sample/bann1.jpg" class="d-block w-100" alt="">
				</div>
				<div class="carousel-item">
					<img src="${rootPath}/static/img/sample/bann3.jpg" class="d-block w-100" alt="">
				</div>
			</div>
		</div>
		<!--// Carousel Bann -->
		<div class="clearfix"></div>
		<div class="clearfix"></div>
		<div class="clearfix"></div>
		<div class="clearfix"></div>


	</div>
	<!--// Content -->


	<div id="pagetop" class="hide">
		<a href="#">
			<img src="${rootPath}/static/img/svg/icon-arrow.svg" alt="Top으로" />
		</a>
	</div>

	<!-- Tab Menu -->
	<div class="tab_barwrap fixed-bottom">
		<div class="container nopadding">
			<nav class="nav nav-pills nav-tab nav-justified">
				<a class="nav-link active" href="${rootPath}/index">
					<figure class="tab_home"></figure>
					홈
				</a>
				<a class="nav-link" href="${rootPath}/category/recommend">
					<figure class="tab_recommend"></figure>
					추천
				</a>
				<a class="nav-link" href="${rootPath}/category/region">
					<figure class="tab_region"></figure>
					지역
				</a>
				<a class="nav-link" href="${rootPath}/category/map">
					<figure class="tab_map"></figure>
					지도
				</a>
				<a class="nav-link" href="${rootPath}/category/my">
					<figure class="tab_my"></figure>
					마이메뉴
				</a>
			</nav>
		</div>
	</div>
	<!-- /end Tab Menu -->

	<!-- JS and JavaScript -->
	<script src="${rootPath}/static/js/jquery.min.js"></script>
	<script src="${rootPath}/static/js/bootstrap.min.js"></script>
	<script src="${rootPath}/static/js/jquery.touchSwipe.min.js"></script>
	<script src="${rootPath}/static/js/default.js"></script>
	<script src="${rootPath}/static/js/swiper.min.js"></script>

	<script>
		//Navigation Menu Slider
		$(document).ready(function() {
			$('#nav-expander').on('click', function(e) {
				e.preventDefault();
				$('body').toggleClass('nav-expanded');
			});
			$('#nav-close').on('click', function(e) {
				e.preventDefault();
				$('body').removeClass('nav-expanded');
			});
		});
	</script>

	<script>
		//Swipe
		$(".carousel")
				.swipe(
						{
							swipe : function(event, direction, distance,
									duration, fingerCount, fingerData) {
								if (direction == 'left')
									$(this).carousel('next');
								if (direction == 'right')
									$(this).carousel('prev');
							},
							tap : function(event, target) {
								// navigateTo(url)
							},

							allowPageScroll : "vertical",
							excludedElements : "label, button, input, select, textarea, .noSwipe",
							threshold : 1
						});

		$(document).swipe(
				{
					swipe : function(event, direction, distance, duration,
							fingerCount) {
					},
					click : function(event, target) {
						$(target).click();
					},
					threshold : 75
				});
	</script>


</body>
</html>