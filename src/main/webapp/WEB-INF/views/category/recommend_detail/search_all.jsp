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
<link href="./assets/css/bootstrap.css" rel="stylesheet">
<link href="./assets/css/style.css" rel="stylesheet">

<!-- Favicons -->
<link rel="apple-touch-icon" href="./assets/brand/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="./assets/brand/favicon.png">

<!-- Facebook -->
<meta property="og:url" content="">
<meta property="og:title" content="라이브투어">
<meta property="og:description" content="스마트한 라이브 여행">
<meta property="og:image" content="./assets/brand/social.png">
<meta property="og:image:type" content="image/png">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">
</head>

<body>
	<!-- Navigation -->
	<nav class="navbar fixed-top navbar-dark bg-primary">
		<a href="javascript:history.back();" class="nav-left">
			<img src="./assets/img/svg/navbar-back.svg" alt="뒤로가기" />
		</a>
		<span class="navbar-title">검색</span>
	</nav>
	<!-- // Navigation -->
	<hr class="mt-0 mb-0" />

	<!-- 검색 -->
	<div class="container nopadding mt-3 mb-2">
		<form class="form-search">
			<a href="search-all.html">
				<img src="./assets/img/svg/form-search.svg" alt="" class="icon-search" />
			</a>
			<input class="form-control mr-sm-2" type="search" placeholder="지금 잠시 멈추고 라이브 랜선 여행을 즐겨보세요~"
				value="신안" aria-label="Search">
			<a href="search.html">
				<img src="./assets/img/svg/navbar-search.svg" alt="Search" />
			</a>
		</form>
	</div>
	<!-- 검색 -->

	<!-- 탭메뉴 -->
	<nav class="nav nav-pills nav-menu nav-justified">
		<a class="nav-link active" href="search-all.html">전체</a>
		<a class="nav-link" href="search-tour.html">관광지</a>
		<a class="nav-link" href="search-lodge.html">숙소</a>
		<a class="nav-link" href="search-restaurant.html">맛집</a>
		<a class="nav-link" href="search-talk.html">여행톡</a>
	</nav>
	<!--// 탭메뉴 -->

	<!-- 관광지 -->
	<div class="container nopadding mt-3 mb-0">
		<h5>관광지</h5>
		<a href="detail.html">
			<div class="card card-sm">
				<div class="row no-gutters">
					<div class="cardimgWrap">
						<img src="./assets/img/sample/photo1.jpg" class="img-fluid" alt="">
					</div>
					<div class="cardInfoWrap">
						<div class="card-body">
							<h6>신안군 흑산도</h6>
							<p>전라남도 신안군 134.2km</p>
						</div>
						<div class="text-right">
							<ul class="info-num mt-4">
								<li><img src="./assets/img/svg/icon-view-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-like-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-comment-blue.svg" alt="" class="vam"> 100</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<a href="detail.html">
			<div class="card card-sm">
				<div class="row no-gutters">
					<div class="cardimgWrap">
						<img src="./assets/img/sample/photo2.jpg" class="img-fluid" alt=""> <span
							class="play-live"><span class="sr-only">LIVE</span></span>
					</div>
					<div class="cardInfoWrap">
						<div class="card-body">
							<h6>신안군 흑산도</h6>
							<p>전라남도 신안군 134.2km</p>
						</div>
						<div class="text-right">
							<ul class="info-num mt-4">
								<li><img src="./assets/img/svg/icon-view-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-like-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-comment-blue.svg" alt="" class="vam"> 100</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<a href="detail.html">
			<div class="card card-sm">
				<div class="row no-gutters">
					<div class="cardimgWrap">
						<img src="./assets/img/sample/photo3.jpg" class="img-fluid" alt=""> <span
							class="play-live"><span class="sr-only">LIVE</span></span>
					</div>
					<div class="cardInfoWrap">
						<div class="card-body">
							<h6>신안군 흑산도</h6>
							<p>전라남도 신안군 134.2km</p>
						</div>
						<div class="text-right">
							<ul class="info-num mt-4">
								<li><img src="./assets/img/svg/icon-view-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-like-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-comment-blue.svg" alt="" class="vam"> 100</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<a href="detail.html">
			<div class="card card-sm">
				<div class="row no-gutters">
					<div class="cardimgWrap">
						<img src="./assets/img/sample/photo4.jpg" class="img-fluid" alt="">
					</div>
					<div class="cardInfoWrap">
						<div class="card-body">
							<h6>신안군 흑산도</h6>
							<p>전라남도 신안군 134.2km</p>
						</div>
						<div class="text-right">
							<ul class="info-num mt-4">
								<li><img src="./assets/img/svg/icon-view-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-like-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-comment-blue.svg" alt="" class="vam"> 100</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<p class="text-right">
			<a href="search-tour.html">
				<small>71개 관광지 더보기&nbsp;<img src="./assets/img/svg/icon-arrow.svg" alt="" class="vam" /></small>
			</a>
		</p>
		<p class="space"></p>
	</div>
	<!--// 관광지 -->

	<!-- 숙소 -->
	<div class="container nopadding mt-3 mb-0">
		<h5>숙소</h5>
		<a href="detail-lodge.html">
			<div class="card card-sm">
				<div class="row no-gutters">
					<div class="cardimgWrap">
						<img src="./assets/img/sample/pension1.jpg" class="img-fluid" alt="">
					</div>
					<div class="cardInfoWrap">
						<div class="card-body">
							<h6>신안군 흑산도</h6>
							<p>전라남도 신안군 134.2km</p>
						</div>
						<div class="text-right">
							<ul class="info-num mt-4">
								<li><img src="./assets/img/svg/icon-view-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-like-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-comment-blue.svg" alt="" class="vam"> 100</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<a href="detail-lodge.html">
			<div class="card card-sm">
				<div class="row no-gutters">
					<div class="cardimgWrap">
						<img src="./assets/img/sample/pension2.jpg" class="img-fluid" alt="">
					</div>
					<div class="cardInfoWrap">
						<div class="card-body">
							<h6>신안군 흑산도</h6>
							<p>전라남도 신안군 134.2km</p>
						</div>
						<div class="text-right">
							<ul class="info-num mt-4">
								<li><img src="./assets/img/svg/icon-view-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-like-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-comment-blue.svg" alt="" class="vam"> 100</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<a href="detail-lodge.html">
			<div class="card card-sm">
				<div class="row no-gutters">
					<div class="cardimgWrap">
						<img src="./assets/img/sample/pension3.jpg" class="img-fluid" alt="">
					</div>
					<div class="cardInfoWrap">
						<div class="card-body">
							<h6>신안군 흑산도</h6>
							<p>전라남도 신안군 134.2km</p>
						</div>
						<div class="text-right">
							<ul class="info-num mt-4">
								<li><img src="./assets/img/svg/icon-view-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-like-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-comment-blue.svg" alt="" class="vam"> 100</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<a href="detail-lodge.html">
			<div class="card card-sm">
				<div class="row no-gutters">
					<div class="cardimgWrap">
						<img src="./assets/img/sample/pension4.jpg" class="img-fluid" alt="">
					</div>
					<div class="cardInfoWrap">
						<div class="card-body">
							<h6>신안군 흑산도</h6>
							<p>전라남도 신안군 134.2km</p>
						</div>
						<div class="text-right">
							<ul class="info-num mt-4">
								<li><img src="./assets/img/svg/icon-view-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-like-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-comment-blue.svg" alt="" class="vam"> 100</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<p class="text-right">
			<a href="search-lodge.html">
				<small>숙소 더보기&nbsp;<img src="./assets/img/svg/icon-arrow.svg" alt="" class="vam" /></small>
			</a>
		</p>
		<p class="space"></p>
	</div>
	<!--// 숙소 -->

	<!-- 맛집 -->
	<div class="container nopadding mt-3 mb-0">
		<h5>맛집</h5>
		<a href="detail-restaurant.html">
			<div class="card card-sm">
				<div class="row no-gutters">
					<div class="cardimgWrap">
						<img src="./assets/img/sample/food1.jpg" class="img-fluid" alt="">
					</div>
					<div class="cardInfoWrap">
						<div class="card-body">
							<h6>신안군 흑산도</h6>
							<p>전라남도 신안군 134.2km</p>
						</div>
						<div class="text-right">
							<ul class="info-num mt-4">
								<li><img src="./assets/img/svg/icon-view-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-like-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-comment-blue.svg" alt="" class="vam"> 100</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<a href="detail-restaurant.html">
			<div class="card card-sm">
				<div class="row no-gutters">
					<div class="cardimgWrap">
						<img src="./assets/img/sample/food2.jpg" class="img-fluid" alt="">
					</div>
					<div class="cardInfoWrap">
						<div class="card-body">
							<h6>신안군 흑산도</h6>
							<p>전라남도 신안군 134.2km</p>
						</div>
						<div class="text-right">
							<ul class="info-num mt-4">
								<li><img src="./assets/img/svg/icon-view-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-like-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-comment-blue.svg" alt="" class="vam"> 100</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<a href="detail-restaurant.html">
			<div class="card card-sm">
				<div class="row no-gutters">
					<div class="cardimgWrap">
						<img src="./assets/img/sample/food3.jpg" class="img-fluid" alt="">
					</div>
					<div class="cardInfoWrap">
						<div class="card-body">
							<h6>신안군 흑산도</h6>
							<p>전라남도 신안군 134.2km</p>
						</div>
						<div class="text-right">
							<ul class="info-num mt-4">
								<li><img src="./assets/img/svg/icon-view-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-like-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-comment-blue.svg" alt="" class="vam"> 100</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<a href="detail-restaurant.html">
			<div class="card card-sm">
				<div class="row no-gutters">
					<div class="cardimgWrap">
						<img src="./assets/img/sample/food4.jpg" class="img-fluid" alt="">
					</div>
					<div class="cardInfoWrap">
						<div class="card-body">
							<h6>신안군 흑산도</h6>
							<p>전라남도 신안군 134.2km</p>
						</div>
						<div class="text-right">
							<ul class="info-num mt-4">
								<li><img src="./assets/img/svg/icon-view-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-like-blue.svg" alt="" class="vam"> 100</li>
								<li><img src="./assets/img/svg/icon-comment-blue.svg" alt="" class="vam"> 100</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<p class="text-right">
			<a href="search-restaurant.html">
				<small>맛집 더보기&nbsp;<img src="./assets/img/svg/icon-arrow.svg" alt="" class="vam" /></small>
			</a>
		</p>
		<p class="space"></p>
	</div>
	<!--// 맛집 -->

	<!-- 여행톡 -->
	<div class="container nopadding mt-3 mb-0">
		<h5>여행톡</h5>
		<a href="detail.html">
			<div class="card card-md">
				<div class="row no-gutters">
					<div class="cardphotoWrap">
						<img src="./assets/img/sample/photo8.jpg" class="img-fluid" alt="">
					</div>
					<div class="cardTextWrap">
						<div class="card-body">
							<h6>남원시 큰엉해안경승지</h6>
							<p>비오는 날 여행이라 더 운치있었네요. 다음에 또 가고 싶어요. 아직 안 가 보신분들께 꼭 추천합니다.</p>
							<div class="media mt-4">
								<img src="./assets/img/sample/profile2.jpg" class="profile-thumb-xs align-self-center mr-1"
									alt="profile">
								<div class="media-body">
									<p class="mb-0 text-secondary">바다조아 | 2022-06-10</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<a href="detail.html">
			<div class="card card-md">
				<div class="row no-gutters">
					<div class="cardphotoWrap">
						<img src="./assets/img/sample/photo6.jpg" class="img-fluid" alt="">
					</div>
					<div class="cardTextWrap">
						<div class="card-body">
							<h6>남원시 큰엉해안경승지</h6>
							<p>비오는 날 여행이라 더 운치있었네요. 다음에 또 가고 싶어요. 아직 안 가 보신분들께 꼭 추천합니다.</p>
							<div class="media mt-4">
								<img src="./assets/img/sample/profile2.jpg" class="profile-thumb-xs align-self-center mr-1"
									alt="profile">
								<div class="media-body">
									<p class="mb-0 text-secondary">바다조아 | 2022-06-10</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<a href="detail.html">
			<div class="card card-md">
				<div class="row no-gutters">
					<div class="cardphotoWrap">
						<img src="./assets/img/sample/photo7.jpg" class="img-fluid" alt="">
					</div>
					<div class="cardTextWrap">
						<div class="card-body">
							<h6>남원시 큰엉해안경승지</h6>
							<p>비오는 날 여행이라 더 운치있었네요. 다음에 또 가고 싶어요. 아직 안 가 보신분들께 꼭 추천합니다.</p>
							<div class="media mt-4">
								<img src="./assets/img/sample/profile4.jpg" class="profile-thumb-xs align-self-center mr-1"
									alt="profile">
								<div class="media-body">
									<p class="mb-0 text-secondary">바다조아 | 2022-06-10</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<a href="detail.html">
			<div class="card card-md">
				<div class="row no-gutters">
					<div class="cardphotoWrap">
						<img src="./assets/img/sample/photo8.jpg" class="img-fluid" alt="">
					</div>
					<div class="cardTextWrap">
						<div class="card-body">
							<h6>남원시 큰엉해안경승지</h6>
							<p>비오는 날 여행이라 더 운치있었네요. 다음에 또 가고 싶어요. 아직 안 가 보신분들께 꼭 추천합니다.</p>
							<div class="media mt-4">
								<img src="./assets/img/sample/profile3.jpg" class="profile-thumb-xs align-self-center mr-1"
									alt="profile">
								<div class="media-body">
									<p class="mb-0 text-secondary">바다조아 | 2022-06-10</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</a>
		<hr />
		<p class="text-right">
			<a href="search-talk.html">
				<small>여행톡 더보기&nbsp;<img src="./assets/img/svg/icon-arrow.svg" alt="" class="vam" /></small>
			</a>
		</p>
		<p class="space"></p>
	</div>
	<!--// 여행톡 -->

	<!-- JS and JavaScript -->
	<script src="./assets/js/jquery.min.js"></script>
	<script src="./assets/js/bootstrap.min.js"></script>
	<script src="./assets/js/jquery.touchSwipe.min.js"></script>
	<script src="./assets/js/default.js"></script>
	<script src="./assets/js/swiper.min.js"></script>

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

	<script>
		$('.toggle_menu').on('click', function() {
			$('.toggle_menu>span').stop().toggleClass('on');
			$(this).stop().toggleClass('on');
		});

		chkNum = 0;
		$(".toggle_menu").click(function() {
			if (chkNum == 0) {
				$(".toggle_menu>span").stop().addClass('on');
				$('nav').stop().addClass('view');
				$('.navbar').stop().addClass('on');
				$(this).stop().addClass('on');
				$(".allmenu").fadeIn();
				chkNum = 1;
			} else {
				$(".toggle_menu>span").stop().removeClass('on');
				$('nav').stop().removeClass('view');
				$('.navbar').stop().removeClass('on');
				$(this).stop().removeClass('on');
				$(".allmenu").fadeOut();
				chkNum = 0;
			}
		});
	</script>

	<script type="text/javascript">
		$(document).ready(function() {

			$(".toggle-btn").click(function() {
				$(".toggle-content").slideToggle("slow");
				$(this).toggleClass("active");
				return false;
				$('.toggle-content').toggleClass('expanded');
			});
		});
	</script>

</body>
</html>