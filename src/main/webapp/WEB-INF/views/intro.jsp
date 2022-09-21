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

<body class="full bgintro">

	<!-- Visual Carousel -->
	<div id="carousel-about" class="carousel slide" data-ride="carousel">
		<div class="carouselwrap">
			<ol class="carousel-indicators">
				<li data-target="#carousel-about" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-about" data-slide-to="1"></li>
				<li data-target="#carousel-about" data-slide-to="2"></li>
				<li data-target="#carousel-about" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="${rootPath}/static/img/about/intro1.jpg" alt="스마트한 라이브 여행" class="d-block w-100"/>
				</div>
				<div class="carousel-item">
					<img src="${rootPath}/static/img/about/intro2.jpg" alt="언텍트 힐링" class="d-block w-100"/>
				</div>
				<div class="carousel-item">
					<img src="${rootPath}/static/img/about/intro3.jpg" alt="추천 여행 정보" class="d-block w-100"/>
				</div>
				<div class="carousel-item">
					<img src="${rootPath}/static/img/about/intro4.jpg" alt="맞춤형 정보" class="d-block w-100"/>
					<!-- 하단버튼 -->
					<div class="fixed-bottom">
						<div class="row no-gutters">
							<div class="col-12"><a href="index" class="btn btn-primary btn-lg btn-block">시작하기</a></div>
						</div>
					</div>
					<!--// 하단버튼 -->
				</div>
			</div>
		</div>
	</div>
	<!--// Visual Carousel -->

    <!-- JS and JavaScript -->
		<script src="${rootPath}/static/js/jquery.min.js"></script>
		<script src="${rootPath}/static/js/bootstrap.min.js"></script>		
		<script src="${rootPath}/static/js/default.js"></script>

</body>
</html>