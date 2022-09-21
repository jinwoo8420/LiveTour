<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<style>
input {
	display: none;
}

form {
	text-align: center;
}

button {
	border: none;
	background-color: inherit;
	text-align: center;
}
</style>

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
	<nav class="navbar fixed-top navbar-dark bg-primary">
		<a href="javascript:history.back();" class="nav-left">
			<img src="${rootPath}/static/img/svg/navbar-back.svg" alt="뒤로가기" />
		</a>
		<span class="navbar-title">회원가입</span>
	</nav>
	<!-- // Navigation -->

	<!-- 정보 -->
	<div class="container nopadding mt-1">
		<h5 class="text-center">
			<img src="${rootPath}/static/img/svg/logo.svg" alt="" />
		</h5>
		<div class="text-right">
			<div class="pay-bg">
				<ol class="pay-step">
					<li>1. 약관동의</li>
					<li>2. 정보입력</li>
					<li class="active">3. 본인인증</li>
				</ol>
			</div>
		</div>
	</div>
	<!--// 정보 -->

	<!-- 입력 -->
	<div class="container nopadding mt-4">
		<p class="text-center">${USER.nickname}님
			반갑습니다!<br />라이브 투어 서비스의 회원 가입을 위해<br />본인 확인을 위한 휴대폰 인증이 필요합니다.
		</p>
		<div class="row no-gutters mt-5">
			<div class="col-4 offset-4">


				<form:form modelAttribute="userVO">
					<form:input path="username" type="email" value="${USER.username}" />
					<%-- <form:errors path="username" value="${USER.username}"/> --%>
					<button type="button" onclick="location.href = '${rootPath}/index';">
						<div class="card-round-box">
							<h6 class="text-center text-primary">
								<img src="${rootPath}/static/img/svg/icon-phone.svg" alt="" class="vam mb-2" />
								<br />이메일 본인 인증
							</h6>
						</div>
					</button>
				</form:form>


				<%-- <a href="${rootPath}/user/email_join">
					<div class="card-round-box">
						<h6 class="text-center text-primary">
							<img src="${rootPath}/static/img/svg/icon-phone.svg" alt="" class="vam mb-2" />
							<br />이메일 본인 인증
						</h6>
					</div>
				</a> --%>


			</div>
		</div>
	</div>
	<!--// 입력 -->

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