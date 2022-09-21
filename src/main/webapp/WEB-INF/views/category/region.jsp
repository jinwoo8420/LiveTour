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
		<meta name="keywords" content="라이브투어, Live Tour, 스마트 여행, 라이브 여행, 전국 여행, 여행 추천, 라이브 자연, 실시간 라이브 여행, 인기 여행, 추천 여행, 언텍트 힐링, 자연, 힐링, 관광명소, 음식, 숙박, 맞춤형 여행 정보">
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
			<a href="javascript:history.back();" class="nav-left"><img src="${rootPath}/static/img/svg/navbar-back.svg" alt="뒤로가기"/></a>
			<span class="navbar-title">지역</span>
			<a href="${rootPath}/category/recommend_detail/search"><img src="${rootPath}/static/img/svg/navbar-search.svg" alt="Search"/></a>
		</nav>
		<!-- // Navigation -->
			
		<!-- SubVisual Carousel -->
		<div id="carousel-subvisual" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carousel-subvisual" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-subvisual" data-slide-to="1"></li>
				<li data-target="#carousel-subvisual" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="${rootPath}/static/img/sample/photob2.jpg" class="d-block w-100" alt="">
					<div class="carousel-caption d-none d-md-block text-left">
						<h5>바다위 해안 사찰 용궁사</h5>
						<p>바다위 형형 색색 광안대로</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="${rootPath}/static/img/sample/photob3.jpg" class="d-block w-100" alt="">
				</div>
				<div class="carousel-item">
					<img src="${rootPath}/static/img/sample/photob5.jpg" class="d-block w-100" alt="">
				</div>
			</div>
		</div>
		<!--// SubVisual Carousel -->

		<!-- Category -->
		<div class="cateWrap">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-6">
						<h4 class="mb-1">부산</h4>
					</div>
					<div class="col-6 text-right">						
						<nav>								
							<div class="nav nav-tabs btn-set" id="nav-tab" role="tablist">
								<strong>내위치</strong>
								<a class="nav-link active btn btn-on" id="nav-home-tab" data-toggle="tab" href="#nav-on" role="tab" aria-controls="nav-on" aria-selected="true">ON</a>
								<a class="nav-link btn btn-off" id="nav-profile-tab" data-toggle="tab" href="#nav-off" role="tab" aria-controls="nav-off" aria-selected="false">OFF</a>
							</div>
						</nav>
					</div>
				</div>
				<hr/>
				<div class="row no-gutters">
					<div class="col-12">
						<div class="slideList">				
							<ul class="listWrap">
								<li class="item"><a href="#none" class="filterList">서울</a></li>
								<li class="item"><a href="#none" class="filterList active">부산</a></li>
								<li class="item"><a href="#none" class="filterList">대구</a></li>
								<li class="item"><a href="#none" class="filterList">인천</a></li>
								<li class="item"><a href="#none" class="filterList">광주</a></li>
								<li class="item"><a href="#none" class="filterList">대전</a></li>
								<li class="item"><a href="#none" class="filterList">울산</a></li>
								<li class="item"><a href="#none" class="filterList">세종</a></li>
							</ul>
						</div>							
					</div>					
				</div>
			</div>
			<div class="roundboxtop"></div>
		</div>
		<!-- // Category -->

		<!-- Content -->
		<div class="container nopadding mt-3">	
			<!-- 리스트 -->
			<div class="row">
				<div class="col-6">
						<a href="detail">
							<div class="imgWrap">
								<img src="${rootPath}/static/img/sample/photo6.jpg" class="img-fluid" alt="">								
							</div>
							<div class="InfoWrap">
								<h6>아름다운 풍경 청산도</h6>
								<p>전라남도  완도군 청산면</p>
							</div>
						</a>
				</div>
				<div class="col-6">
						<a href="${rootPath}/detail/detail">
							<div class="imgWrap">
								<img src="${rootPath}/static/img/sample/photo7.jpg" class="img-fluid" alt="">								
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
								<img src="${rootPath}/static/img/sample/photo5.jpg" class="img-fluid" alt="">								
							</div>
							<div class="InfoWrap">
								<h6>아름다운 풍경 청산도</h6>
								<p>전라남도  완도군 청산면</p>
							</div>
						</a>
				</div>
				<div class="col-6">
						<a href="${rootPath}/detail/detail">
							<div class="imgWrap">
								<img src="${rootPath}/static/img/sample/photo4.jpg" class="img-fluid" alt="">								
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
								<img src="${rootPath}/static/img/sample/photo8.jpg" class="img-fluid" alt="">								
							</div>
							<div class="InfoWrap">
								<h6>아름다운 풍경 청산도</h6>
								<p>전라남도  완도군 청산면</p>
							</div>
						</a>
				</div>
				<div class="col-6">
						<a href="${rootPath}/detail/detail">
							<div class="imgWrap">
								<span class="play-live"><small class="sr-only">LIVE</small></span>
								<img src="${rootPath}/static/img/sample/photo9.jpg" class="img-fluid" alt="">								
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
								<img src="${rootPath}/static/img/sample/photo2.jpg" class="img-fluid" alt="">								
							</div>
							<div class="InfoWrap">
								<h6>아름다운 풍경 청산도</h6>
								<p>전라남도  완도군 청산면</p>
							</div>
						</a>
				</div>
				<div class="col-6">
						<a href="${rootPath}/detail/detail">
							<div class="imgWrap">
								<span class="play-live"><small class="sr-only">LIVE</small></span>
								<img src="${rootPath}/static/img/sample/photo3.jpg" class="img-fluid" alt="">								
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
								<img src="${rootPath}/static/img/sample/photo1.jpg" class="img-fluid" alt="">								
							</div>
							<div class="InfoWrap">
								<h6>아름다운 풍경 청산도</h6>
								<p>전라남도  완도군 청산면</p>
							</div>
						</a>
				</div>
				<div class="col-6">
						<a href="${rootPath}/detail/detail">
							<div class="imgWrap">
								<span class="play-live"><small class="sr-only">LIVE</small></span>
								<img src="${rootPath}/static/img/sample/photo5.jpg" class="img-fluid" alt="">								
							</div>
							<div class="InfoWrap">
								<h6>형형색색 아름다운 감천문화마을</h6>
								<p>부산광역시 사하구</p>
							</div>
						</a>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="clearfix"></div>
			<!--// 리스트 -->

			<!-- Carousel Bann -->
			<div id="carousel-bann" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carousel-bann" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-bann" data-slide-to="1"></li>
					<li data-target="#carousel-bann" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="${rootPath}/static/img/sample/bann1.jpg" class="d-block w-100" alt="">
					</div>
					<div class="carousel-item">
						<img src="${rootPath}/static/img/sample/bann2.jpg" class="d-block w-100" alt="">
					</div>
					<div class="carousel-item">
						<img src="${rootPath}/static/img/sample/bann3.jpg" class="d-block w-100" alt="">
					</div>
				</div>
			</div>
			<!--// Carousel Bann -->
			<div class="clearfix"></div>
			<div class="clearfix"></div>
		</div>
		<!--// Content -->


		<div id="pagetop" class="hide"><a href="#"><img src="${rootPath}/static/img/svg/icon-arrow.svg" alt="Top으로"/></a></div>

		<!-- Tab Menu -->		
		<div class="tab_barwrap fixed-bottom">
			<div class="container nopadding">
				<nav class="nav nav-pills nav-tab nav-justified">
					<a class="nav-link" href="${rootPath}/index"><figure class="tab_home"></figure>홈</a>
					<a class="nav-link" href="${rootPath}/category/recommend"><figure class="tab_recommend"></figure>추천</a>
					<a class="nav-link active" href="${rootPath}/category/region"><figure class="tab_region"></figure>지역</a>
					<a class="nav-link" href="${rootPath}/category/map"><figure class="tab_map"></figure>지도</a>
					<a class="nav-link" href="${rootPath}/category/my"><figure class="tab_my"></figure>마이메뉴</a>
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
		
    <script>//Navigation Menu Slider
    $(document).ready(function(){		
        $('#nav-expander').on('click',function(e){
      		e.preventDefault();
      		$('body').toggleClass('nav-expanded');
      	});
      	$('#nav-close').on('click',function(e){
      		e.preventDefault();
      		$('body').removeClass('nav-expanded');
      	});
      });
    </script>    

    <script>//Swipe
		$(".carousel").swipe({
			swipe: function(event, direction, distance, duration, fingerCount, fingerData) {
				if (direction == 'left') $(this).carousel('next');
				if (direction == 'right') $(this).carousel('prev');
			},
			tap:function(event, target) {
				// navigateTo(url)
			},

			allowPageScroll:"vertical",
			excludedElements: "label, button, input, select, textarea, .noSwipe",
			threshold:1
		});

		$(document).swipe({
			swipe:function(event, direction, distance, duration, fingerCount) {
			},
			click:function (event, target) {
				$(target).click();
			},
			threshold:75
		});
    </script>


</body>
</html>