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
<meta property="og:image" content="${rootPath}/static/brand/social.png">
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
		<span class="navbar-title">마이메뉴</span>
		<a href="${rootPath}/category/recommend_detail/search">
			<img src="${rootPath}/static/img/svg/navbar-search.svg" alt="Search" />
		</a>
	</nav>
	<!-- // Navigation -->
	<hr class="mt-0 mb-0" />

	<!-- 프로필 -->
	<div class="container padding">
		<div class="media d-flex align-items-center">

			<c:choose>
				<c:when test="${not empty USER.profile_up_img}">
					<img class="profile-thumb-md align-self-center mr-2" alt="profile"
						src="${rootPath}/upload/${USER.profile_up_img}">
				</c:when>

				<c:when test="${empty USER.profile_up_img}">
					<img class="profile-thumb-md align-self-center mr-2" alt="profile"
						src="${rootPath}/static/img/profile/no_img.jpeg">
				</c:when>
			</c:choose>

			<div class="media-body">
				<h6>
					<strong>${USER.nickname}</strong>
					<a href="${rootPath}/user/logout" class="btn btn-round btn-round-grey btn-xs float-right ml-1">로그아웃</a>
					<a href="${rootPath}/my/my-profile-edit"
						class="btn btn-round btn-round-grey btn-xs float-right">회원정보</a>
				</h6>
			</div>
		</div>
	</div>
	<!--// 프로필 -->
	<p class="space mt-1 mb-2"></p>

	<!-- 예약/쿠폰 -->
	<div class="container nopadding">
		<div class="row d-flex align-items-center">
			<div class="col-6">
				<div class="card-round-box">
					<div class="row d-flex align-items-center">
						<div class="col-6">
							<i class="bi bi-heart align-middle bi-md mr-1"></i>좋아요
						</div>
						<div class="col-6 text-right">
							<a href="${rootPath}/my/my-zzim">
								<strong class="text-primary large">21</strong><small class="text-secondary">건</small>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6">
				<div class="card-round-box">
					<div class="row">
						<div class="col-6">
							<i class="bi bi-chat-text align-middle bi-md mr-1"></i>댓글
						</div>
						<div class="col-6 text-right">
							<a href="${rootPath}/my/my-comment">
								<strong class="text-primary large">7</strong><small class="text-secondary">건</small>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// 예약/쿠폰 -->

	<!-- 마이메뉴 -->
	<div class="container nopadding">
		<nav class="nav nav-pills nav-sel nav-my nav-col-4">
			<a class="nav-link" href="${rootPath}/category/recommend">
				<figure>
					<img src="${rootPath}/static/img/svg/tab_recommend.svg" alt="" />
				</figure>
				<span>추천</span>
			</a>
			<a class="nav-link" href="${rootPath}/category/region">
				<figure>
					<img src="${rootPath}/static/img/svg/tab_region.svg" alt="" />
				</figure>
				<span>지역</span>
			</a>
			<a class="nav-link" href="${rootPath}/category/map">
				<figure>
					<img src="${rootPath}/static/img/svg/tab_map.svg" alt="" />
				</figure>
				<span>지도</span>
			</a>
			<a class="nav-link" href="${rootPath}/setting/set">
				<figure>
					<img src="${rootPath}/static/img/svg/navbar-set.svg" alt="" />
				</figure>
				<span>설정</span>
			</a>
			<a class="nav-link" href="${rootPath}/setting/notice">
				<figure>
					<img src="${rootPath}/static/img/svg/mymenu-notice.svg" alt="" />
				</figure>
				<span>공지사항</span>
			</a>
			<a class="nav-link" href="${rootPath}/cs/cs-faq">
				<figure>
					<img src="${rootPath}/static/img/svg/mymenu-mypost.svg" alt="" />
				</figure>
				<span>자주하는 질문</span>
			</a>
			<a class="nav-link" href="${rootPath}/cs/cs-qna">
				<figure>
					<img src="${rootPath}/static/img/svg/mymenu-write.svg" alt="" />
				</figure>
				<span>1:1문의</span>
			</a>
			<a class="nav-link" href="${rootPath}/cs/cs-apply">
				<figure>
					<img src="${rootPath}/static/img/svg/mymenu-cs.svg" alt="" />
				</figure>
				<span>제휴요청</span>
			</a>
		</nav>
		<p class="space mt-2"></p>
	</div>
	<!--// 마이메뉴 -->

	<!-- 고객센터 -->
	<div class="container nopadding">
		<h6 class="text-center mt-3">고객센터</h6>
		<p class="text-center">
			<small class="grey">365일 10시~18시 운영 (점심시간 12시 ~ 13시 30분)</small>
		</p>
		<div class="row no-gutters no-gutters-cs d-flex align-items-center mt-4">
			<div class="col-6">
				<a href="#none" class="btn btn-yellow btn-round btn-lg btn-block cs-padding">
					<img src="${rootPath}/static/img/svg/icon-talk.svg" alt="Set" class="vam mr-1" />
					카카오 상담톡
				</a>
			</div>
			<div class="col-6" style="padding-right: 0px;">
				<a href="#none" class="btn btn-grey btn-round btn-lg btn-block cs-padding" data-toggle="modal"
					data-target="#callModal">
					<img src="${rootPath}/static/img/svg/icon-call.svg" alt="Set" class="vam mr-1" />
					1234-7777
				</a>
			</div>
		</div>
	</div>
	<!--// 고객센터 -->

	<!-- Tab Menu -->
	<div class="tab_barwrap fixed-bottom">
		<div class="container nopadding">
			<nav class="nav nav-pills nav-tab nav-justified">
				<a class="nav-link" href="${rootPath}/index">
					<figure class="tab_home"></figure>
					홈
				</a>
				<a class="nav-link" href="${rootPath}/category/recommend">
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
				<a class="nav-link active" href="${rootPath}/category/my">
					<figure class="tab_my"></figure>
					마이메뉴
				</a>
			</nav>
		</div>
	</div>
	<!-- /end Tab Menu -->

	<!-- Modal 전화걸기 -->
	<div class="modal fade" id="callModal" tabindex="-1" aria-labelledby="callModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-sm modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-center" id="callModalLabel">전화걸기</h5>
				</div>
				<div class="modal-body text-center">
					<p>
						고객센터로 전화연결 하시겠습니까?<br />365일 10시 ~ 18시<br />(점심시간 12시 ~ 13시 30분)
					</p>
				</div>
				<div class="modal-footer-btm">
					<div class="row">
						<div class="col-6">
							<a href="#none" class="btn btn-primary btn-lg btn-block" data-dismiss="modal">통화</a>
						</div>
						<div class="col-6">
							<a href="#none" class="btn btn-third btn-lg btn-block" data-dismiss="modal">닫기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// Modal 전화걸기 -->

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
