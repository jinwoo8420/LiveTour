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

<!-- Favicons -->
<link rel="apple-touch-icon" href="${rootPath}/static/brand/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="${rootPath}/static/brand/favicon.png">

<!-- Facebook -->
<meta property="og:url" content="">
<meta property="og:title" content="라이브투어">
<meta property="og:description" content="스마트한 라이브 여행">
<meta property="og:image" content="${rootPath}/static/brand/fishking-social.png">
<meta property="og:image:type" content="image/png">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">
</head>

<body>
	<!-- Navigation -->
	<nav class="navbar fixed-top navbar-light">
		<a href="javascript:history.back();" class="nav-left">
			<img src="${rootPath}/static/img/svg/navbar-back.svg" alt="뒤로가기" />
		</a>
		<span class="navbar-title">추천</span>
		<a href="${rootPath}/category/recommend_detail/search">
			<img src="${rootPath}/static/img/svg/navbar-search.svg" alt="Search" />
		</a>
	</nav>
	<!-- // Navigation -->

	<!-- 힐링 테마여행 -->
	<div class="container nopadding">
		<div class="mainBgWrap">
			<h5>
				<a href="${rootPath}/category/recommend">힐링 테마여행</a>
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
					<li class="item more"><a href="boat" class="moreLink">
							<div class="inner">
								<span>더보기</span>
							</div>
						</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--// 힐링 테마여행 -->

	<!-- 데이터 -->
	<div class="container nopadding">
		<h5>추천 라이브 친환경 관광지</h5>
		<div class="row">
			<div class="col-6">
				<a href="${rootPath}/detail/detail">
					<div class="imgWrap">
						<span class="play-live"><small class="sr-only">LIVE</small></span> <img
							src="${rootPath}/static/img/sample/photo1.jpg" class="img-fluid" alt="">
					</div>
					<div class="InfoWrap">
						<h6>아름다운 풍경 청산도</h6>
						<p>전라남도 완도군 청산면</p>
					</div>
				</a>
			</div>
			<div class="col-6">
				<a href="${rootPath}/detail/detail">
					<div class="imgWrap">
						<span class="play-live"><small class="sr-only">LIVE</small></span> <img
							src="${rootPath}/static/img/sample/photo2.jpg" class="img-fluid" alt="">
					</div>
					<div class="InfoWrap">
						<h6>형형색색 아름다운 감천문화마을</h6>
						<p>부산광역시 사하구</p>
					</div>
				</a>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-6">
				<a href="${rootPath}/detail/detail">
					<div class="imgWrap">
						<span class="play-live"><small class="sr-only">LIVE</small></span> <img
							src="${rootPath}/static/img/sample/photo8.jpg" class="img-fluid" alt="">
					</div>
					<div class="InfoWrap">
						<h6>아름다운 풍경 청산도</h6>
						<p>전라남도 완도군 청산면</p>
					</div>
				</a>
			</div>
			<div class="col-6">
				<a href="${rootPath}/detail/detail">
					<div class="imgWrap">
						<span class="play-live"><small class="sr-only">LIVE</small></span> <img
							src="${rootPath}/static/img/sample/photo9.jpg" class="img-fluid" alt="">
					</div>
					<div class="InfoWrap">
						<h6>형형색색 아름다운 감천문화마을</h6>
						<p>부산광역시 사하구</p>
					</div>
				</a>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!--// 데이터 -->
	<div class="space"></div>
	<div class="clearfix"></div>

	<!-- 데이터 -->
	<div class="container nopadding">
		<h5>인기 맛집</h5>
		<div class="row">
			<div class="col-6">
				<a href="${rootPath}/detail/detail">
					<div class="imgWrap">
						<img src="${rootPath}/static/img/sample/food1.jpg" class="img-fluid" alt="">
					</div>
					<div class="InfoWrap">
						<h6>1004 횟집식당</h6>
						<p>전라남도 완도군 청산면</p>
					</div>
				</a>
			</div>
			<div class="col-6">
				<a href="${rootPath}/detail/detail">
					<div class="imgWrap">
						<img src="${rootPath}/static/img/sample/food2.jpg" class="img-fluid" alt="">
					</div>
					<div class="InfoWrap">
						<h6>가거비치식당</h6>
						<p>부산광역시 사하구</p>
					</div>
				</a>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-6">
				<a href="${rootPath}/detail/detail">
					<div class="imgWrap">
						<img src="${rootPath}/static/img/sample/food3.jpg" class="img-fluid" alt="">
					</div>
					<div class="InfoWrap">
						<h6>1004 횟집식당</h6>
						<p>전라남도 완도군 청산면</p>
					</div>
				</a>
			</div>
			<div class="col-6">
				<a href="${rootPath}/detail/detail">
					<div class="imgWrap">
						<img src="${rootPath}/static/img/sample/food4.jpg" class="img-fluid" alt="">
					</div>
					<div class="InfoWrap">
						<h6>가거비치식당</h6>
						<p>부산광역시 사하구</p>
					</div>
				</a>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!--// 데이터 -->
	<div class="space"></div>
	<div class="clearfix"></div>

	<!-- 데이터 -->
	<div class="container nopadding">
		<h5>인기 숙박</h5>
		<div class="row">
			<div class="col-6">
				<a href="${rootPath}/detail/detail">
					<div class="imgWrap">
						<img src="${rootPath}/static/img/sample/pension1.jpg" class="img-fluid" alt="">
					</div>
					<div class="InfoWrap">
						<h6>디데이 펜션</h6>
						<p>전라남도 완도군 청산면</p>
					</div>
				</a>
			</div>
			<div class="col-6">
				<a href="${rootPath}/detail/detail">
					<div class="imgWrap">
						<img src="${rootPath}/static/img/sample/pension2.jpg" class="img-fluid" alt="">
					</div>
					<div class="InfoWrap">
						<h6>가가로 펜션</h6>
						<p>부산광역시 사하구</p>
					</div>
				</a>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-6">
				<a href="${rootPath}/detail/detail">
					<div class="imgWrap">
						<img src="${rootPath}/static/img/sample/pension3.jpg" class="img-fluid" alt="">
					</div>
					<div class="InfoWrap">
						<h6>샤이니 펜션</h6>
						<p>전라남도 완도군 청산면</p>
					</div>
				</a>
			</div>
			<div class="col-6">
				<a href="${rootPath}/detail/detail">
					<div class="imgWrap">
						<img src="${rootPath}/static/img/sample/pension4.jpg" class="img-fluid" alt="">
					</div>
					<div class="InfoWrap">
						<h6>해리 펜션</h6>
						<p>부산광역시 사하구</p>
					</div>
				</a>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!--// 데이터 -->
	<div class="clearfix"></div>


	<div id="pagetop" class="hide">
		<a href="#">
			<img src="assets/img/svg/icon-arrow.svg" alt="Top으로" />
		</a>
	</div>

	<!-- Tab Menu -->
	<div class="tab_barwrap fixed-bottom">
		<div class="container nopadding">
			<nav class="nav nav-pills nav-tab nav-justified">
				<a class="nav-link" href="${rootPath}/index">
					<figure class="tab_home"></figure>
					홈
				</a>
				<a class="nav-link active" href="${rootPath}/category/recommend">
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