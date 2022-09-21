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
<meta name="keywords" content="라이브투어, Live Tour, 스마트 여행, 라이브 여행, 전국 여행, 여행 추천, 라이브 자연, 실시간 라이브 여행, 인기 여행, 추천 여행, 언텍트 힐링, 자연, 힐링, 관광명소, 음식, 숙박, 맞춤형 여행 정보">
<title>라이브투어 :: 스마트한 라이브 여행</title>

<!-- CSS -->
<link href="${rootPath}/static/css/bootstrap.css" rel="stylesheet">
<link href="${rootPath}/static/css/style.css" rel="stylesheet">

<!-- Favicons -->
<link rel="apple-touch-icon" href="${rootPath}/static/brand/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="${rootPath}/static/brand/favicon.png">

<script>
	const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/join.js?ver=2022-09-21-4"></script>

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
					<li class="active">2. 정보입력</li>
					<li>3. 본인인증</li>
				</ol>
			</div>
		</div>
	</div>
	<!--// 정보 -->

	<!-- 입력 -->
	<div class="container nopadding mt-4">
		<div>
			<form class="form-line mt-3 join" method="POST">
				<div class="form-group">
					<label for="inputName" class="sr-only">이메일</label>
					<input name="username" type="email" class="form-control" id="inputName" placeholder="이메일" value="">
					<div class="w3-container error"></div>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">비밀번호</label>
					<input name="password" type="password" class="form-control" id="inputPassword" placeholder="비밀번호 (영문/숫자/특수문자 조합, 8~15자 이내)" value="">
					<div class="w3-container error"></div>
				</div>
				<div class="form-group">
					<label for="inputPasswordC" class="sr-only">비밀번호 확인</label>
					<input type="password" class="form-control" id="inputPasswordC" placeholder="비밀번호 확인" value="">
					<div class="w3-container error"></div>
				</div>
				<div class="form-group">
					<label for="inputNickname" class="sr-only">닉네임</label>
					<input name="nickname" type="text" class="form-control" id="inputNickname" placeholder="닉네임" value="" maxlength='8'>
					<div class="w3-container error"></div>
				</div>
				<div class="form-group pt-2">
					<button <%-- onclick="location.href = '${rootPath}/user/signup2_check';" --%>
						class="btn btn-grey btn-lg btn-block" id="btn-join" type="button">가입하기</button>
					<%-- <a href="${rootPath}/user/signup2_check" class="btn btn-grey btn-lg btn-block" type="submit">가입하기</a> --%>
				</div>
			</form>
		</div>
	</div>
	<!--// 입력 -->

	<!-- JS and JavaScript -->
	<script src="${rootPath}/static/js/jquery.min.js"></script>
	<script src="${rootPath}/static/js/bootstrap.min.js"></script>
	<script src="${rootPath}/static/js/jquery.touchSwipe.min.js"></script>
	<script src="${rootPath}/static/js/default.js"></script>
	<script src="${rootPath}/static/js/swiper.min.js"></script>
</body>
</html>