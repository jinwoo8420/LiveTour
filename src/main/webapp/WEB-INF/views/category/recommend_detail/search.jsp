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
	<nav class="navbar fixed-top navbar-dark bg-primary">
		<a href="javascript:history.back();" class="nav-left">
			<img src="${rootPath}/static/img/svg/navbar-back.svg" alt="뒤로가기" />
		</a>
		<span class="navbar-title">검색</span>
	</nav>
	<!-- // Navigation -->
	<hr class="mt-0 mb-0" />

	<!-- 검색 -->
	<div class="container nopadding mt-3 mb-0">
		<form class="form-search">
			<a href="${rootPath}/category/recommend_detail/search-all">
				<img src="${rootPath}/static/img/svg/form-search.svg" alt="" class="icon-search" />
			</a>
			<input class="form-control mr-sm-2" type="search" placeholder="지금 잠시 멈추고 라이브 랜선 여행을 즐겨보세요~"
				aria-label="Search">
			<a href="search.html">
				<img src="${rootPath}/static/img/svg/navbar-search.svg" alt="Search" />
			</a>
		</form>
	</div>
	<!-- 검색 -->

	<!-- 인기 검색어 -->
	<div class="container nopadding mt-2 mb-0">
		<h5>
			인기 검색어 <small class="red"><strong>HOT</strong></small>
		</h5>
		<ul class="list-search">
			<li><a href="search-all.html">
					<strong>1</strong> 신안
				</a></li>
			<li><a href="search-all.html">
					<strong>2</strong> 제주도
				</a></li>
			<li><a href="search-all.html">
					<strong>3</strong> 여름바다
				</a></li>
			<li><a href="search-all.html">
					<strong>4</strong> 강릉 <span class="new float-right">NEW</span>
				</a></li>
			<li><a href="search-all.html">
					<strong>5</strong> 여수 <span class="new float-right">NEW</span>
				</a></li>
		</ul>
		<div class="toggle-content">
			<!-- toogle 접기/펼치기 콘텐츠 -->
			<ul class="list-search">
				<li><a href="search-all.html">
						<strong>6</strong> 속초
					</a></li>
				<li><a href="search-all.html">
						<strong>7</strong> 부산
					</a></li>
				<li><a href="search-all.html">
						<strong>8</strong> 강원도
					</a></li>
				<li><a href="search-all.html">
						<strong>9</strong> 경주 <span class="new float-right">NEW</span>
					</a></li>
				<li><a href="search-all.html">
						<strong>10</strong> 속초 <span class="new float-right">NEW</span>
					</a></li>
			</ul>
		</div>
		<div class="togglewrap">
			<a href="#" class="toggle-btn"></a>
		</div>
	</div>
	<!--// 인기 검색어 -->

	<!--  라이브투어 추천 -->
	<div class="container nopadding mt-2 mb-0">
		<h5>라이브투어 추천</h5>
		<div class="slideList slideList-md">
			<ul class="listWrap">
				<li class="item"><a href="detail.html">
						<div class="imgWrap">
							<img src="${rootPath}/static/img/sample/photo1.jpg" class="img-fluid" alt=""> <span
								class="icon-goods"></span>
						</div>
						<div class="InfoWrap">
							<h6>신안군 흑산도</h6>
							<p>전라남도 27km</p>
						</div>
					</a></li>
				<li class="item"><a href="detail.html">
						<div class="imgWrap">
							<img src="${rootPath}/static/img/sample/photo2.jpg" class="img-fluid" alt=""> <span
								class="icon-goods active"></span>
						</div>
						<div class="InfoWrap">
							<h6>신안군 흑산도</h6>
							<p>전라남도 27km</p>
						</div>
					</a></li>
				<li class="item"><a href="detail.html">
						<div class="imgWrap">
							<img src="${rootPath}/static/img/sample/photo3.jpg" class="img-fluid" alt=""> <span
								class="icon-goods"></span>
						</div>
						<div class="InfoWrap">
							<h6>신안군 흑산도</h6>
							<p>전라남도 27km</p>
						</div>
					</a></li>
				<li class="item"><a href="detail.html">
						<div class="imgWrap">
							<img src="${rootPath}/static/img/sample/photo4.jpg" class="img-fluid" alt=""> <span
								class="icon-goods"></span>
						</div>
						<div class="InfoWrap">
							<h6>신안군 흑산도</h6>
							<p>전라남도 27km</p>
						</div>
					</a></li>
				<li class="item"><a href="detail.html">
						<div class="imgWrap">
							<img src="${rootPath}/static/img/sample/photo5.jpg" class="img-fluid" alt=""> <span
								class="icon-goods"></span>
						</div>
						<div class="InfoWrap">
							<h6>신안군 흑산도</h6>
							<p>전라남도 27km</p>
						</div>
					</a></li>
				<li class="item"><a href="detail.html">
						<div class="imgWrap">
							<img src="${rootPath}/static/img/sample/photo6.jpg" class="img-fluid" alt=""> <span
								class="icon-goods"></span>
						</div>
						<div class="InfoWrap">
							<h6>신안군 흑산도</h6>
							<p>전라남도 27km</p>
						</div>
					</a></li>
				<li class="item"><a href="detail.html">
						<div class="imgWrap">
							<img src="${rootPath}/static/img/sample/photo7.jpg" class="img-fluid" alt=""> <span
								class="icon-goods"></span>
						</div>
						<div class="InfoWrap">
							<h6>신안군 흑산도</h6>
							<p>전라남도 27km</p>
						</div>
					</a></li>
				<li class="item"><a href="detail.html">
						<div class="imgWrap">
							<img src="${rootPath}/static/img/sample/photo8.jpg" class="img-fluid" alt=""> <span
								class="icon-goods"></span>
						</div>
						<div class="InfoWrap">
							<h6>신안군 흑산도</h6>
							<p>전라남도 27km</p>
						</div>
					</a></li>
			</ul>
		</div>
	</div>
	<!--// 라이브투어 추천 -->


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

</body>
</html>