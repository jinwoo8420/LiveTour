<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="apple-touch-icon"
	href="${rootPath}/static/brand/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="${rootPath}/static/brand/favicon.png">

<!-- Facebook -->
<meta property="og:url" content="">
<meta property="og:title" content="라이브투어">
<meta property="og:description" content="스마트한 라이브 여행">
<meta property="og:image" content="${rootPath}/static/brand/social.png">
<meta property="og:image:type" content="image/png">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">
</head>

<body>
	<!-- Navigation -->
	<nav class="navbar fixed-top navbar-dark bg-primary">
		<a href="javascript:history.back();" class="nav-left"><img
			src="${rootPath}/static/img/svg/navbar-back.svg" alt="뒤로가기" /></a> <span
			class="navbar-title">지도</span> <a
			href="${rootPath}/category/recommend_detail/search"><img
			src="${rootPath}/static/img/svg/navbar-search.svg" alt="Search" /></a>
	</nav>
	<!-- // Navigation -->

	<!-- 리스트 -->
	<div class="container nopadding">
		<div class="mapwrap d-flex align-items-center">

			<ul class="marker-list">
				<li class="active"><a href="#none"><figure class="bg">
							<span class="play-live"></span>
						</figure> <span>라이브</span></a></li>

				<!-- 1.키워드 검색을 위한 form tag -->
				<li class="active"><form>
						<a id="btn_tour" href="#none" onclick="return tourKeywordSearch()"><figure
								class="bg1">
								<img src="${rootPath}/static/img/svg/marker-tour.svg" alt=""
									class="vam" />
							</figure> <span id="val_tour">관광지</span></a>
					</form></li>

				<li class="active"><form>
						<a id="btn_food" href="#none" onclick="return foodKeywordSearch()"><figure
								class="bg2">
								<img src="${rootPath}/static/img/svg/marker-restaurant.svg"
									alt="" class="vam" />
							</figure> <span id="val_food">맛집</span></a>
					</form></li>

				<li class="active">
					<form>
						<a id="btn_lodge" href="#none" onclick="return lodgeKeywordSearch()"><figure
								class="bg3">
								<img src="${rootPath}/static/img/svg/marker-lodge.svg" alt=""
									class="vam" />
							</figure> <span id="val_lodge">숙박</span></a>
					</form>
				</li>

			</ul>
			<!-- 지도 div -->
			<div id="map">
				<!-- 스크립트에서는 로컬파일을 직접적으로 가져오는것이 보안상에 문제로 안된다. 그래서 이미지 태그에 src를 추출을했다 -->
				<img id="tour_img" src="${rootPath}/static/img/tour-marker.png" style="display: none;">
				<img id="food_img" src="${rootPath}/static/img/food-marker.png" style="display: none;">
				<img id="lodge_img" src="${rootPath}/static/img/lodge-marker.png" style="display: none;">
				<img id="pointer-me" src="${rootPath}/static/img/marker-me.png" style="display: none;" />
				
				<!-- 마커아이콘 -->
				<%-- <a href="#none" data-toggle="modal" data-target="#infoModal"><div class="marker bg1" style="position:absolute; top:100px; left:120px;"><figure><img src="${rootPath}/static/img/svg/marker-tour.svg" alt="관광지"/></figure><strong>남이섬 남이나루</strong></div></a>
					<a href="#none" data-toggle="modal" data-target="#infoModal"><div class="marker orange" style="position:absolute; top:270px; left:170px;"><figure><img src="${rootPath}/static/img/svg/marker-restaurant.svg" alt="맛집"/></figure><strong>경복궁집</strong></div></a>
					<a href="#none" data-toggle="modal" data-target="#infoModal"><div class="marker yellow" style="position:absolute; top:330px; left:270px;"><figure><img src="${rootPath}/static/img/svg/marker-lodge.svg" alt="숙박"/></figure><strong>남이펜션</strong></div></a>
					<a href="#none" data-toggle="modal" data-target="#infoModal"><div class="marker bg1" style="position:absolute; top:400px; left:70px;"><figure><img src="${rootPath}/static/img/svg/marker-tour.svg" alt="관광지"/></figure><strong>남이섬 남이나루</strong></div></a>
					<a href="#none" data-toggle="modal" data-target="#infoModal"><div class="marker orange" style="position:absolute; top:470px; left:150px;"><figure><img src="${rootPath}/static/img/svg/marker-restaurant.svg" alt="맛집"/></figure><strong>경복궁집</strong></div></a>
					<a href="#none" data-toggle="modal" data-target="#infoModal"><div class="marker yellow" style="position:absolute; top:530px; left:190px;"><figure><img src="${rootPath}/static/img/svg/marker-lodge.svg" alt="숙박"/></figure><strong>남이펜션</strong></div></a>
				 --%>
				<!-- / 마커아이콘-->
				
				<!-- kakao api 인증 요청 -->
				<script
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f03c88bcd77572e88d422c4306a16404&libraries=services"></script>
				<script src="${rootPath}/static/js/Kakaomap.js?ver=22"></script>
			</div>
		</div>
	</div>
	<!--// 리스트 -->

	<!-- Modal 정보 -->
	<div class="modal show modal-full-btm radius" id="infoModal"
		tabindex="-1" aria-labelledby="infoModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<a href="#none" data-dismiss="modal" class="float-top-right"><img
						src="${rootPath}/static/img/svg/icon_close_grey.svg" alt="" /></a> <a
						href="${rootPath}/detail/detail">
						<div class="card card-sm">
							<div class="row no-gutters d-flex align-items-center">
								<div class="cardimgWrap">
									<span class="play-live"></span> <img
										src="${rootPath}/static/img/sample/photob1.jpg"
										class="img-fluid" alt="" />
								</div>
								<div class="cardInfoWrap">
									<div class="card-body">
										<h6>남이섬 남이나루</h6>
										<p>
											<strong>강원도 춘천시 남산면 방하리 198-2</strong><br />내 위치에서 721km
										</p>
										<a href="#none" class="btn btn-dark btn-round btn-xs mt-2"><i
											class="bi bi-arrow-90deg-right mr-1"></i>길안내</a>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!--// Modal 정보 -->

	<!-- Tab Menu -->
	<div class="tab_barwrap fixed-bottom">
		<div class="container nopadding">
			<nav class="nav nav-pills nav-tab nav-justified">
				<a class="nav-link" href="${rootPath}/index"><figure
						class="tab_home"></figure>홈</a> <a class="nav-link"
					href="${rootPath}/category/recommend"><figure
						class="tab_recommend"></figure>추천</a> <a class="nav-link"
					href="${rootPath}/category/region"><figure class="tab_region"></figure>지역</a>
				<a class="nav-link active" href="${rootPath}/category/map"><figure
						class="tab_map"></figure>지도</a> <a class="nav-link"
					href="${rootPath}/category/my"><figure class="tab_my"></figure>마이메뉴</a>
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

	<script>
		function ViewLayerPopTour() {
			document.getElementById("LayerPopTour").style.display = 'inline'
		}
		function CloseLayerPopTour() {
			document.getElementById("LayerPopTour").style.display = 'none';
		}
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