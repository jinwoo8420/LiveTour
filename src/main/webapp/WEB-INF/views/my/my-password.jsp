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
	<nav class="navbar fixed-top navbar-dark bg-primary">
		<a href="javascript:history.back();" class="nav-left">
			<img src="${rootPath}/static/img/svg/navbar-back.svg" alt="뒤로가기" />
		</a>
		<span class="navbar-title">비밀번호 재설정</span>
	</nav>
	<!-- // Navigation -->
	<hr class="mt-0 mb-0" />


	<!-- 입력 -->
	<div class="container nopadding mt-4">
		<div class="row no-gutters align-items-center">
			<div class="col-12 pl-2">새로운 비밀번호를 입력해 주세요.</div>
		</div>
		<div class="card-round-box-grey mt-3">
			<form class="form-line mt-3  update" method="post">
				<div class="form-group">
					<input name="old_pw" type="password" class="form-control" id="inputPassword"
						placeholder="현재 비밀번호" value="">
					<div class="w3-container error"></div>
				</div>
				<div class="form-group">
					<input name="password" type="password" class="form-control" id="inputNewPassword"
						placeholder="새 비밀번호 (영문/숫자/특수문자 중 2가지 이상, 8~15자 이내)" value="">
					<div class="w3-container error"></div>
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="inputNewPasswordC" placeholder="새 비밀번호 확인"
						value="">
					<div class="w3-container error"></div>
				</div>
				<button type="button" class="btn btn-primary btn-lg btn-block btn_update">등록하기</button>
			</form>
		</div>
	</div>
	<!--// 입력 -->

	<!-- JS and JavaScript -->
	<script>
		const rootPath = "${rootPath}"
	</script>
	<script src="${rootPath}/static/js/jquery.min.js"></script>
	<script src="${rootPath}/static/js/bootstrap.min.js"></script>
	<script src="${rootPath}/static/js/jquery.touchSwipe.min.js"></script>
	<script src="${rootPath}/static/js/default.js"></script>
	<script src="${rootPath}/static/js/swiper.min.js"></script>
	<script src="${rootPath}/static/js/pwUpdate.js?ver=1"></script>

</body>
</html>