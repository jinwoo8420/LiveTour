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
			<span class="navbar-title">탈퇴하기</span>
		</nav>
		<!-- // Navigation -->

		<!-- 입력 -->
		<div class="container nopadding mt-4">
			<h5 class="text-center">라이브투어를 탈퇴하면</h5>
			<div class="card-round-box-grey mt-3 pt-3 pb-3">
				<ul class="list">
					<li>내 프로필, 댓글 내용, 찜목록, 가입정보 등 그 외 사용자가 설정한 모든 정보가 사라지고 복구가 불가능합니다.</li>
					<li>참여중인 댓글 및 사진 정보 등 모든 정보가 즉시 삭제되므로 중요한 정보가 있는지 탈퇴 전에 저장해 주세요.</li>
					<li>탈퇴 시 라이브투어에 재가입해도 자동으로 복구되지 않습니다.</li>
				</ul>
			</div>
			<label class="control radio mt-2">
				<input type="radio" class="add-contrast" data-role="collar">
				<span class="control-indicator"></span><span class="control-text"><strong>모든 정보를 삭제하는 것에 동의 합니다.</strong></span>
			</label><br/>
			<a href="${rootPath}/user/login" class="btn btn-danger btn-lg btn-block" data-toggle="modal" data-target="#authModal">탈퇴하기</a>
		</div>
		<!--// 입력 -->

		<!-- Modal 인증 -->
		<div class="modal fade" id="authModal" tabindex="-1" aria-labelledby="authModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-sm modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title text-center" id="authModalLabel">인증하기</h5>
					</div>
					<div class="modal-body text-center">
						<div class="row no-gutters align-items-center">
							<div class="col-12 pl-2">아이디와 비밀번호를 입력해 주세요.</div>
						</div>
						<div class="mt-3">
							<form class="form-line mt-3">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="아이디" value="">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" placeholder="비밀번호" value="">
								</div>
							</form>
						</div>
					</div>
					<div class="modal-footer-btm">
						<div class="row">							
							<div class="col-6"><a href="${rootPath}/user/login" class="btn btn-primary btn-lg btn-block">확인</a></div>
							<div class="col-6"><a href="#none" class="btn btn-third btn-lg btn-block" data-dismiss="modal">닫기</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--// Modal 인증 -->

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