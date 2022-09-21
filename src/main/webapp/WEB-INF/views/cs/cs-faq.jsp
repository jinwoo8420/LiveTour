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
		<meta property="og:image" content="${rootPath}/static/brand/fishking-social.png">
		<meta property="og:image:type" content="image/png">
		<meta property="og:image:width" content="1200">
		<meta property="og:image:height" content="630">
</head>

<body>
		<!-- Navigation -->
		<nav class="navbar fixed-top navbar-dark bg-primary">
			<a href="javascript:history.back();" class="nav-left"><img src="${rootPath}/static/img/svg/navbar-back.svg" alt="뒤로가기"/></a>
			<span class="navbar-title">고객센터</span>
		</nav>
		<!-- // Navigation -->
		<hr class="mt-0 mb-0"/>

		<!-- 탭메뉴 -->
		<nav class="nav nav-pills nav-menu nav-justified">
			<a class="nav-link active" href="${rootPath}/cs/cs-faq">자주하는 질문</a>
			<a class="nav-link" href="${rootPath}/cs/cs-qna">1:1문의</a>
			<a class="nav-link" href="${rootPath}/cs/cs-apply">제휴요청</a>			
		</nav>
		<!--// 탭메뉴 -->

		<!-- 데이터 -->
		<div class="container nopadding">
			<div class="accordion" id="accordionFaq">
				<div class="card">
					<div class="card-header" id="headingOne">
						<h2 class="mb-0">
							<a class="btn btn-block text-left" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
								[계정문의] 계정 탈퇴는 어떻게 하나요?
							</a>
						</h2>
					</div>

					<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionFaq">
						<div class="card-body">
							계정삭제는 마이메뉴 회원정보 내에서 가능합니다.
							계정탈퇴는 아래의 순서에 따라 진행 부탁드립니다.
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingTwo">
						<h2 class="mb-0">
							<a class="btn btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
								[계정문의] 계정 탈퇴는 어떻게 하나요?
							</a>
						</h2>
					</div>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionFaq">
						<div class="card-body">
							계정삭제는 마이메뉴 회원정보 내에서 가능합니다.
							계정탈퇴는 아래의 순서에 따라 진행 부탁드립니다.
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingThree">
						<h2 class="mb-0">
							<a class="btn btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
								[계정문의] 계정 탈퇴는 어떻게 하나요?
							</a>
						</h2>
					</div>
					<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionFaq">
						<div class="card-body">
							계정삭제는 마이메뉴 회원정보 내에서 가능합니다.
							계정탈퇴는 아래의 순서에 따라 진행 부탁드립니다.
						</div>
					</div>
				</div>
			</div>
			<p class="space mt-1"></p>
		</div>
		<!--// 데이터 -->


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