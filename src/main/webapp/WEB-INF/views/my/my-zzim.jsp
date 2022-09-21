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
		<meta property="og:image" content="${rootPath}/static/brand/social.png">
		<meta property="og:image:type" content="image/png">
		<meta property="og:image:width" content="1200">
		<meta property="og:image:height" content="630">
</head>

<body>
		<!-- Navigation -->
		<nav class="navbar fixed-top navbar-dark bg-primary">
			<a href="javascript:history.back();" class="nav-left"><img src="${rootPath}/static/img/svg/navbar-back.svg" alt="뒤로가기"/></a>
			<span class="navbar-title">내 글 관리</span>
		</nav>
		<!-- // Navigation -->
			
		<!-- 탭메뉴 -->
		<nav class="nav nav-pills nav-menu nav-justified">
			<a class="nav-link active" href="${rootPath}/my/my-zzim">좋아요</a>
			<a class="nav-link" href="${rootPath}/my/my-comment">댓글</a>
		</nav>
		<!--// 탭메뉴 -->

		<!-- 리스트 -->
		<div class="container nopadding">
			<h5>총 5건</h5>
			<a href="${rootPath}/detail/detail">
				<div class="card card-md">
					<div class="row no-gutters">
						<div class="cardphotoWrap">
							<img src="${rootPath}/static/img/sample/photo8.jpg" class="img-fluid" alt="">
							<span class="play-live"><span class="sr-only">LIVE</span></span>
						</div>
						<div class="cardTextWrap">
							<a href="#none" class="float-right"><img src="${rootPath}/static/img/svg/icon-like-on.svg" alt="좋아요" /></a>
							<div class="card-body pt-2">
								<h6>신안군 흑산도</h6>
								<p>전라남도 신안군  134.2km</p>
							</div>
						</div>
					</div>
				</div>	
			</a>
			<hr/>
			<a href="${rootPath}/detail/detail">
				<div class="card card-md">
					<div class="row no-gutters">
						<div class="cardphotoWrap">
							<img src="${rootPath}/static/img/sample/photo6.jpg" class="img-fluid" alt="">
						</div>
						<div class="cardTextWrap">
							<a href="#none" class="float-right"><img src="${rootPath}/static/img/svg/icon-like-on.svg" alt="좋아요" /></a>
							<div class="card-body pt-2">
								<h6>신안군 흑산도</h6>
								<p>전라남도 신안군  134.2km</p>
							</div>
						</div>
					</div>
				</div>	
			</a>
			<hr/>
			<a href="${rootPath}/detail/detail">
				<div class="card card-md">
					<div class="row no-gutters">
						<div class="cardphotoWrap">
							<img src="${rootPath}/static/img/sample/photo7.jpg" class="img-fluid" alt="">
						</div>
						<div class="cardTextWrap">
							<a href="#none" class="float-right"><img src="${rootPath}/static/img/svg/icon-like-on.svg" alt="좋아요" /></a>
							<div class="card-body pt-2">
								<h6>신안군 흑산도</h6>
								<p>전라남도 신안군  134.2km</p>
							</div>
						</div>
					</div>
				</div>	
			</a>
			<hr/>
			<a href="${rootPath}/detail/detail">
				<div class="card card-md">
					<div class="row no-gutters">
						<div class="cardphotoWrap">
							<img src="${rootPath}/static/img/sample/photo8.jpg" class="img-fluid" alt="">
						</div>
						<div class="cardTextWrap">
							<a href="#none" class="float-right"><img src="${rootPath}/static/img/svg/icon-like-on.svg" alt="좋아요" /></a>
							<div class="card-body pt-2">
								<h6>신안군 흑산도</h6>
								<p>전라남도 신안군  134.2km</p>
							</div>
						</div>
					</div>
				</div>	
			</a>
			<hr/>
		</div>
		<!--// 리스트 -->


		<!-- Tab Menu -->		
		<div class="tab_barwrap fixed-bottom">
			<div class="container nopadding">
				<nav class="nav nav-pills nav-tab nav-justified">
					<a class="nav-link" href="${rootPath}/index"><figure class="tab_home"></figure>홈</a>
					<a class="nav-link" href="${rootPath}/category/recommend"><figure class="tab_recommend"></figure>추천</a>
					<a class="nav-link" href="${rootPath}/category/region"><figure class="tab_region"></figure>지역</a>
					<a class="nav-link" href="${rootPath}/category/map"><figure class="tab_map"></figure>지도</a>
					<a class="nav-link active" href="${rootPath}/category/my"><figure class="tab_my"></figure>마이메뉴</a>
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

		<script>
			$('.toggle_menu').on('click', function() {
				$('.toggle_menu>span').stop().toggleClass('on');
				$(this).stop().toggleClass('on');
			});

			chkNum = 0;
			$(".toggle_menu").click(function(){
				if(chkNum == 0){
					$(".toggle_menu>span").stop().addClass('on');
					$('nav').stop().addClass('view');
					$('.navbar').stop().addClass('on');
					$(this).stop().addClass('on');
					$(".allmenu").fadeIn();
					chkNum = 1;
				}else{
					$(".toggle_menu>span").stop().removeClass('on');
					$('nav').stop().removeClass('view');
					$('.navbar').stop().removeClass('on');
					$(this).stop().removeClass('on');
					$(".allmenu").fadeOut();
					chkNum = 0;
				}		
			});
		</script>

</body>
</html>