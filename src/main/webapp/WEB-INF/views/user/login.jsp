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
	<nav class="navbar fixed-top navbar-dark">
		<a href="javascript:history.back();" class="nav-left">
			<img src="${rootPath}/static/img/svg/navbar-back-black.svg" alt="뒤로가기" />
		</a>
		<span class="navbar-title"></span>
	</nav>
	<!-- // Navigation -->

	<!-- 정보 -->
	<div class="container nopadding mt-1">
		<h5 class="text-center">
			<img src="${rootPath}/static/img/svg/logo.svg" alt="" />
		</h5>
	</div>
	<!--// 정보 -->

	<!-- 입력 -->
	<div class="container nopadding">
		<div class="mt-4">
			<form class="form-line mt-1" method="POST">
				<div class="form-group">
					<label for="inputName" class="sr-only">이메일</label>
					<input name="username" type="email" class="form-control" id="inputName" placeholder="이메일"
						value="">
					<c:if test="${error == 'USERNAME_FAIL'}">
						<div class="w3-red w3-padding-16">ID 없음</div>
					</c:if>
				</div>
				<div class="form-group">
					<label for="inputPhone" class="sr-only">비밀번호</label>
					<input name="password" type="password" class="form-control" id="inputPhone"
						placeholder="비밀번호 (영문/숫자/특수문자 조합, 8~15자 이내)" value="">
					<c:if test="${error == 'PASSWORD_FAIL'}">
						<div class="w3-red w3-padding-16">password 틀림</div>
					</c:if>
				</div>

				<button type="submit" class="btn btn-primary btn-lg btn-block">로그인</button>
			</form>

			<p class="text-center mt-3">
				<a href="${rootPath}/user/findpw">
					<small class="grey">비밀번호를 잊으셨나요?</small>
				</a>
			</p>
			<a href="${rootPath}/user/signup" class="btn btn-grey btn-lg btn-block mt-4">이메일로 가입하기</a>

			<div class="row no-gutters-md row-padding mt-3">
				<div class="col-3">
					<a href="#none" class="btn btn-sns-kakao btn-yellow btn-lg btn-block">
						<img src="${rootPath}/static/img/svg/icon-sns-kakao.svg" alt="" class="vam" />
						&nbsp;시작
					</a>
				</div>
				<div class="col-3">
					<a href="#none" class="btn btn-sns-facebook btn-lg btn-block">
						<img src="${rootPath}/static/img/svg/icon-sns-facebook.svg" alt="" class="vam" />
						&nbsp;시작
					</a>
				</div>
				<div class="col-3">
					<a href="#none" class="btn btn-sns-naver btn-lg btn-block">
						<img src="${rootPath}/static/img/svg/icon-sns-naver.svg" alt="" class="vam" />
						&nbsp;시작
					</a>
				</div>
				<div class="col-3">
					<a href="#none" class="btn btn-sns-apple btn-lg btn-block">
						<img src="${rootPath}/static/img/svg/icon-sns-apple.svg" alt="" class="vam" />
						&nbsp;시작
					</a>
				</div>
			</div>
			<p class="text-center mt-4">
				라이브투어 로그인/회원가입시 <br />
				<a href="${rootPath}/setting/policy-terms" class="text-primary">이용약관</a>
				및
				<a href="${rootPath}/setting/policy-privacy" class="text-primary">개인정보취급방침</a>
				에 동의하게 됩니다.</small>
				</a>
			</p>
		</div>
		<p class="clearfix">
			<br /> <br />
		</p>
	</div>
	<!--// 입력 -->


	<!-- 하단버튼 -->
	<div class="fixed-bottom">
		<div class="row no-gutters">
			<!-- <div class="col-12"> 비활성버튼 -->
			<div class="col-12"></div>
		</div>
	</div>
	<!--// 하단버튼 -->

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

</body>
</html>