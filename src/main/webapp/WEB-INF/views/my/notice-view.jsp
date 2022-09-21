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
			<span class="navbar-title">공지사항</span>
		</nav>
		<!-- // Navigation -->

		<!-- 리스트 -->
		<div class="container nopadding">		
			<div class="pt-0">
				<hr class="full mt-0 mb-3"/>
				<a href="${rootPath}/my/notice-view">
				<div class="row no-gutters align-items-center">
					<div class="col-12 text-center">
						<h5 class="mb-1"><strong class="text-primary">[공지]</strong> 고객센터 운영시간 변경 안내</h5>
						<small class="grey">2022.07.20</small>
					</div>
				</div>
				</a>
				<hr class="full mt-3 mb-3"/>
				<a href="${rootPath}/my/notice-view">
				<div class="row no-gutters align-items-center">
					<div class="col-12 pl-2">
						안녕하세요. <br/>
						라이브투어 입니다. <br/><br/>

						2022년 8월 20일자로 당사 고객센터 운영시간이 <br/>
						다음과 같이 변경되오니 참고 부탁드립니다. <br/><br/>

						변경전: 평일 10:00 ~ 18:00 (점심시간 12:00 ~ 13:30) <br/>
						변경후: 365일 10:00 ~ 18:00 (점심시간 12:00 ~ 13:30) <br/><br/>

						라이브투어를 이용해 주셔서 감사드리며, <br/>
						더 나은 서비스로 보답해 드릴 수 있도록 노력하겠습니다.<br/><br/>

						감사합니다. 
					</div>
				</div>
				</a>
				<hr class="full mt-3 mb-3"/>
			</div>
		</div>
		<!--// 리스트 -->

		<!-- 하단버튼 -->
		<div class="fixed-bottom">
			<div class="row no-gutters">
				<div class="col-12"><a href="${rootPath}/my/notice" class="btn btn-primary btn-lg btn-block">목록</a></div>
			</div>
		</div>
		<!--// 하단버튼 -->

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

		<script type="text/javascript">
			$(document).ready(function(){

				$(".toggle-btn").click(function() {
					$(".toggle-content").slideToggle("slow");
					$(this).toggleClass("active"); return false;
					$('.toggle-content').toggleClass('expanded');
				});	 
			});
		</script>

</body>
</html>