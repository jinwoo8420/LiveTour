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
			<span class="navbar-title">비밀번호 재설정</span>
		</nav>
		<!-- // Navigation -->

		<!-- 정보 -->
		<div class="container nopadding mt-1">
			<h5 class="text-center">
				<img src="${rootPath}/static/img/svg/logo.svg" alt=""/>
			</h5>
		</div>
		<!--// 정보 -->

		<!-- 입력 -->
		<div class="container nopadding">	
			<div class="mt-4">
				<form class="form-line mt-	1">
					<div class="form-group">
						<label for="inputName" class="sr-only">휴대폰 번호</label>
						<input type="email" class="form-control" id="inputName" placeholder="휴대폰 번호를 입력해 주세요." value="">
						<a href="#none" class="text-link text-primary">발송</a>
					</div>
					<div class="form-group">
						<label for="inputPhone" class="sr-only">인증번호</label>
						<input type="email" class="form-control is-invalid" id="inputPhone" placeholder="인증번호 6자리를 입력해 주세요." value="">
						<p class="text-muted">
							<small class="red">인증번호가 일치하지 않습니다.</small>
						</p>
					</div>
					<div class="form-group">
						<label for="inputPhone" class="sr-only">인증번호</label>
						<input type="email" class="form-control is-valid" id="inputPhone" placeholder="인증번호 6자리를 입력해 주세요." value="">
						<p class="text-muted">
							<small class="text-success">인증되었습니다.</small>
						</p>
					</div>
					<div class="form-group">

					</div>
				</form>				
				<!-- <a href="findpw_reset" class="btn btn-grey btn-lg btn-block">비밀번호 찾기</a> -->
				<a href="findpw_reset" class="btn btn-primary btn-lg btn-block">비밀번호 찾기</a>
			</div>
		</div>
		<!--// 입력 -->
		


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