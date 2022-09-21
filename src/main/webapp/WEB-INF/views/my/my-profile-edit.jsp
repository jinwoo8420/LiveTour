<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
button {
	border: none;
	background-color: white;
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

<body class="pofile">
	<div class="mt-0">
		<div class="profilewrap">
			<div class="float-top-left">
				<a href="javascript:history.back();">
					<img src="${rootPath}/static/img/svg/navbar-back.svg" alt="뒤로가기" />
				</a>
			</div>
			<a href="story-add-photo"
				class="img-upload btn btn-circle btn-circle-sm btn-white float_btm_right" data-toggle="modal"
				data-target="#photobgModal">
				<img src="${rootPath}/static/img/svg/icon-photo.svg" alt="" class="icon-photo" />
			</a>
			<div class="imgWrap">

				<c:choose>
					<c:when test="${not empty USER.profile_up_bg}">
						<img src="${rootPath}/upload/${USER.profile_up_bg}" class="d-block w-100" alt="">
					</c:when>

					<c:when test="${empty USER.profile_up_bg}">
						<img class="d-block w-100" src="${rootPath}/static/img/profile/no_img.jpeg">
					</c:when>
				</c:choose>

				<%-- <img src="${rootPath}/static/img/bg-profile01.jpg" class="d-block w-100" alt=""> --%>
			</div>
			<form method="POST">
				<figure>
					<span>

						<c:choose>
							<c:when test="${not empty USER.profile_up_img}">
								<img class="media-object profile" src="${rootPath}/upload/${USER.profile_up_img}">
							</c:when>

							<c:when test="${empty USER.profile_up_img}">
								<img class="media-object profile" src="${rootPath}/static/img/profile/no_img.jpeg">
							</c:when>
						</c:choose>

						<a href="story-add-photo" class="img-upload btn btn-circle btn-circle-sm btn-white float_btn"
							data-toggle="modal" data-target="#photoModal">
							<img src="${rootPath}/static/img/svg/icon-photo.svg" alt="" class="icon-photo" />
						</a>
					</span>
				</figure>
			</form>
		</div>
	</div>

	<!-- 입력 -->
	<div class="container nopadding">
		<div class="pt-0">
			<hr class="full mt-3 mb-3" />
			<div class="row no-gutters align-items-center">
				<div class="col-3 pl-2">
					<small class="grey">계정</small>
				</div>
				<div class="col-8 text-right">${USER.username}</div>
				<div class="col-1 text-right pl-1"></div>
			</div>
			<hr class="full mt-3 mb-3" />
			<a href="${rootPath}/my/my-nickname">
				<div class="row no-gutters align-items-center">
					<div class="col-3 pl-2">
						<small class="grey">닉네임</small>
					</div>
					<div class="col-8 text-right">${USER.nickname}</div>
					<div class="col-1 text-right pl-1">
						<img src="${rootPath}/static/img/svg/cal-arrow-right.svg" alt="" />
					</div>
				</div>
			</a>
			<hr class="full mt-3 mb-3" />
			<a href="${rootPath}/my/my-password">
				<div class="row no-gutters align-items-center">
					<div class="col-3 pl-2">
						<small class="grey">비밀번호 변경</small>
					</div>
					<div class="col-8 text-right"></div>
					<div class="col-1 text-right pl-1">
						<img src="${rootPath}/static/img/svg/cal-arrow-right.svg" alt="" />
					</div>
				</div>
			</a>
			<hr class="full mt-3 mb-3" />
			<a href="${rootPath}/user/logout">
				<div class="row no-gutters align-items-center">
					<div class="col-3 pl-2">
						<small class="grey">로그아웃</small>
					</div>
					<div class="col-8 text-right"></div>
					<div class="col-1 text-right pl-1">
						<img src="${rootPath}/static/img/svg/cal-arrow-right.svg" alt="" />
					</div>
				</div>
			</a>
			<hr class="full mt-3 mb-3" />
		</div>
	</div>
	<!--// 입력 -->

	<!-- Modal 프로필 배경 사진 -->
	<div class="modal fade" id="photobgModal" tabindex="-1" role="dialog"
		aria-labelledby="photobgModalLabel">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content modal-sm modal-xs">
				<div class="modal-body">
					<h5 class="text-primary mt-3 mb-3 text-center">프로필 배경 사진 변경</h5>
					<hr class="full mt-1 mb-1">
					<div class="list-group">
						<a href="#none" class="list-group-item" data-dismiss="modal">사진촬영</a>

						<form:form enctype="multipart/form-data" action="${rootPath}/my/bg_update">
							<!-- <label class="list-group-item file_label" for="file_input"> 앨범에서 사진 선택 </label> -->
							<button id="file_btn2" class="list-group-item" style="display: none;" type="submit">저장</button>
							<input name="file" multiple="multiple" id="file_input2" type="file" accept="images/*" />
						</form:form>

						<a href="${rootPath}/my/bg_delete" class="list-group-item">기본 이미지로 변경</a>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end Modal 프로필 배경 사진 -->

	<!-- Modal 프로필 사진 -->
	<div class="modal fade" id="photoModal" tabindex="-1" role="dialog"
		aria-labelledby="photoModalLabel">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content modal-sm modal-xs">
				<div class="modal-body">
					<h5 class="text-primary mt-3 mb-3 text-center">프로필 사진 변경</h5>
					<hr class="full mt-1 mb-1">

					<div class="list-group">
						<a href="#" class="list-group-item" data-dismiss="modal">사진촬영</a>

						<form:form class="file_form" enctype="multipart/form-data"
							action="${rootPath}/my/my-profile-edit">
							<label class="list-group-item file_label" for="file_input"> 앨범에서 사진 선택 </label>
							<input name="file" multiple="multiple" id="file_input" onClick="javascript:void(0)" style="display: none;" type="file"
								accept="images/*" />
							<button id="file_btn" class="list-group-item" style="display: none;" type="button">저장</button>
						</form:form>

						<a href="${rootPath}/my/my-profile_img_delete" class="list-group-item">기본 이미지로 변경</a>
						<!-- data-dismiss="modal" -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end Modal 프로필 사진 -->

	<!-- JS and JavaScript -->
	<script src="${rootPath}/static/js/jquery.min.js"></script>
	<script src="${rootPath}/static/js/bootstrap.min.js"></script>
	<script src="${rootPath}/static/js/jquery.touchSwipe.min.js"></script>
	<script src="${rootPath}/static/js/default.js"></script>
	<script src="${rootPath}/static/js/swiper.min.js"></script>
	<script src="${rootPath}/static/js/file_input.js?ver=20220811"></script>

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

	<!-- <script>
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
	</script> -->

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
	<!-- <script>
		var fileCheck = document.getElementById("file_input").value;
		const btnCheck = docoument.getElementById("file_btn");
		if (fileCheck) {
			btnCheck.style.opacity = '1';
		}
	</script> -->



</body>
</html>