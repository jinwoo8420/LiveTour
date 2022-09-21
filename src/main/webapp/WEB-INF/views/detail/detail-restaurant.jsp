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
<meta name="keywords"
	content="라이브투어, Live Tour, 스마트 여행, 라이브 여행, 전국 여행, 여행 추천, 라이브 자연, 실시간 라이브 여행, 인기 여행, 추천 여행, 언텍트 힐링, 자연, 힐링, 관광명소, 음식, 숙박, 맞춤형 여행 정보">
<title>라이브투어 :: 스마트한 라이브 여행</title>

<!-- CSS -->
<link href="${rootPath}/static/css/bootstrap.css" rel="stylesheet">
<link href="${rootPath}/static/css/style.css" rel="stylesheet">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="${rootPath}/static/brand/apple-touch-icon.png" sizes="180x180">
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

	<!-- 상품이미지 -->
	<div id="carousel-visual-detail" class="carousel slide"
		data-ride="carousel">
		<div class="float-top-left">
			<a href="javascript:history.back();"> <img
				src="${rootPath}/static/img/svg/navbar-back.svg" alt="뒤로가기" />
			</a>
		</div>
		<ol class="carousel-indicators">
			<li data-target="#carousel-visual-detail" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-visual-detail" data-slide-to="1"></li>
			<li data-target="#carousel-visual-detail" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="${COMMONDETAIL.firstimage}" class="d-block w-100" alt="">
			</div>
			<div class="carousel-item">
				<img src="${COMMONDETAIL.firstimage}" class="d-block w-100" alt="">
			</div>
			<div class="carousel-item">
				<img src="${COMMONDETAIL.firstimage}" class="d-block w-100" alt="">
			</div>
		</div>
	</div>
	<%-- <div class="carousel-item active">
				<img src="${rootPath}/static/img/sample/food1.jpg" class="d-block w-100" alt="">
			</div>
			<div class="carousel-item">
				<img src="${rootPath}/static/img/sample/food2.jpg" class="d-block w-100" alt="">
			</div>
			<div class="carousel-item">
				<img src="${rootPath}/static/img/sample/food3.jpg" class="d-block w-100" alt="">
			</div>
		</div>
	</div> --%>
	<!--// 상품이미지 -->

	<!-- 상품타이틀 -->
	<div class="container nopadding">
		<div class="card mt-3">
			<h4>${COMMONDETAIL.title}</h4>
			<div class="rateit-wrap">
				<span class="float-left">${COMMONDETAIL.addr1}<br /> <c:choose>
						<c:when test="${empty COMMONDETAIL.tel}">
							제공된 전화번호가 없습니다.
						</c:when>
						<c:when test="${not empty COMMONDETAIL.tel}">
							${COMMONDETAIL.tel}
						</c:when>
					</c:choose>
				</span>
			</div>
			<div class="float-top-right">
				<a href="#none"> <span class="icon-heart float-left"></span>
				</a>
				<!-- 좋아요 눌렀을 경우 <span class="icon-heart active"></span> -->
				<a href="#none" data-toggle="modal" data-target="#snsModal"> <img
					src="${rootPath}/static/img/svg/icon-share.svg" alt="" />
				</a>
			</div>
		</div>
	</div>
	<!--// 상품타이틀 -->
	<hr>

	<!-- 상세정보 -->
	<div class="container nopadding mt-3">
		<h5>상세정보</h5>
		<p>${COMMONDETAIL.overview}</p>
	</div>
	<!--// 상세정보 -->


	<!-- 광고배너 -->
	<div class="mainAdWrap mt-3">
		<div class="container nopadding">
			<h5>추천메뉴</h5>
			<div class="card mt-3">
				<div class="row no-gutters">
					<div class="cardimgWrap">
						<img src="${rootPath}/static/img/sample/food1.jpg"
							class="img-fluid" alt="">
					</div>
					<div class="cardInfoWrap">
						<div class="card-body">
							<h6>${FOODDETAIL.firstmenu}</h6>
							<!-- <h6>코스메뉴 (A코스)</h6>
							<p class="mb-1">
								<span class="text-grey">예약손님에 한해 상차림 가능</span>
							</p>
							<h6 class="btm-right">
								<strong class="large orange">70,000</strong><small>원</small>
							</h6> -->
						</div>
					</div>
				</div>
			</div>
			<div class="card mt-3">
				<div class="row no-gutters">
					<div class="cardimgWrap">
						<img src="${rootPath}/static/img/sample/food2.jpg"
							class="img-fluid" alt="">
					</div>
					<div class="cardInfoWrap">
						<div class="card-body">
							<h6>${FOODDETAIL.treatmenu}</h6>
							<!-- <h6>코스메뉴 (B코스)</h6>
							<p class="mb-1">
								<span class="text-grey">예약손님에 한해 상차림 가능</span>
							</p>
							<h6 class="btm-right">
								<strong class="large orange">50,000</strong><small>원</small>
							</h6> -->
						</div>
					</div>
				</div>
			</div>
			<div class="card mt-3">
				<div class="row no-gutters">
					<div class="cardimgWrap">
						<img src="${rootPath}/static/img/sample/food3.jpg"
							class="img-fluid" alt="">
					</div>
					<div class="cardInfoWrap">
						<div class="card-body">
							<h6>코스메뉴 (C코스)</h6>
							<p class="mb-1">
								<span class="text-grey">예약손님에 한해 상차림 가능</span>
							</p>
							<h6 class="btm-right">
								<strong class="large orange">30,000</strong><small>원</small>
							</h6>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// 광고배너 -->

	<!-- 위치정보 -->
	<div class="container nopadding">
		<h5>위치정보</h5>
		<ul class="notice">
			<li>${COMMONDETAIL.addr1}</li>
		</ul>
		<div class="row no-gutters align-items-center">
			<div class="col-12">
				<div id="map" class="map-sm" style="height: 170px;"></div>
				<script
					src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=f03c88bcd77572e88d422c4306a16404"></script>
				<script>
							var container = document.getElementById('map');
							var options = {
								center : new daum.maps.LatLng(${COMMONDETAIL.mapy},
										${COMMONDETAIL.mapx}),
								level : 3
							};
							var map = new daum.maps.Map(container, options);
							
							var markerPosition  = new kakao.maps.LatLng(${COMMONDETAIL.mapy},
									${COMMONDETAIL.mapx}); 

							// 마커를 생성합니다
							var marker = new kakao.maps.Marker({
							    position: markerPosition
							});

							// 마커가 지도 위에 표시되도록 설정합니다
							marker.setMap(map);
						</script>
			</div>
		</div>
		<div class="row align-items-center border-round-btm">
			<div class="col-6 text-center align-self-center border-right">
				<a href="#none">
					<div class="padding">
						<img src="${rootPath}/static/img/svg/icon-map.svg" alt=""
							class="vam" /> 길찾기
					</div>
				</a>
			</div>
			<div class="col-6 text-center align-self-center border-right">
				<a href="#none">
					<div class="padding">
						<img src="${rootPath}/static/img/svg/icon-copy.svg" alt=""
							class="vam" /> 주소복사
					</div>
				</a>
			</div>
		</div>
	</div>
	<!--// 위치정보 -->
	<div class="container nopadding mt-4">
		<ul class="list mb-2">
			<c:choose>
				<c:when test="${empty COMMONDETAIL.tel}">
					<li><strong class="listdt">문의 및 안내</strong>제공된 전화번호가 없습니다.</li>
				</c:when>
				<c:when test="${not empty COMMONDETAIL.tel}">
					<li><strong class="listdt">문의 및 안내</strong>${COMMONDETAIL.tel}</li>
				</c:when>
			</c:choose>


			<c:choose>
				<c:when test="${empty COMMONDETAIL.homepage}">
					<li><strong class="listdt">홈페이지</strong>제공된 홈페이지가 없습니다.</li>
				</c:when>
				<c:when test="${not empty COMMONDETAIL.homepage}">
					<li><strong class="listdt">홈페이지</strong>${COMMONDETAIL.homepage}</li>
				</c:when>
			</c:choose>



			<li><strong class="listdt">주소</strong>${COMMONDETAIL.addr1}</li>



			<c:choose>
				<c:when test="${empty TOURDETAIL.parking}">
					<li><strong class="listdt">주차</strong>제공된 주차장 정보가 없습니다.</li>
				</c:when>
				<c:when test="${not empty TOURDETAIL.parking}">
					<li><strong class="listdt">주차</strong>${TOURDETAIL.parking}</li>
				</c:when>
			</c:choose>
			<li><strong class="listdt">예약안내</strong>${FOODDETAIL.reservationfood}</li>
			<li><strong class="listdt">영업시간</strong>${FOODDETAIL.opentimefood}</li>
			<li><strong class="listdt">쉬는날</strong>${FOODDETAIL.restdatefood}</li>


		</ul>
	</div>

	<div class="fixed-bottom">
		<div class="d-flex justify-content-center">
			<div class="menu_wrap">
				<ul>
					<li><a href="#none">
							<figure>
								<i class="bi bi-telephone-outbound"></i>
							</figure> <span class="sr-only">전화연결</span>
					</a></li>
					<li><a href="#none">
							<figure class="bg-success">
								<i class="bi bi-house-door"></i>
							</figure> <span class="sr-only">홈페이지</span>
					</a></li>
					<li><a href="#none">
							<figure class="bg-warning">
								<i class="bi bi-arrow-return-right"></i>
							</figure> <span class="sr-only">길찾기</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Modal SNS공유 -->
	<div class="modal fade modal-full modal-sns" id="snsModal"
		tabindex="-1" aria-labelledby="snsModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body text-center">
					<a class="nav-expander" data-dismiss="modal"> <img
						src="${rootPath}/static/img/svg/icon_close_grey.svg" alt="팝업닫기" />
					</a>
					<h4>공유하기</h4>
					<p class="clearfix"></p>
					<ul class="sns">
						<li><a href="#none">
								<figure>
									<img src="${rootPath}/static/img/svg/sns_kakaotalk.svg"
										alt="카카오톡" />
								</figure> <span>카카오톡</span>
						</a></li>
						<li><a href="#none">
								<figure>
									<img src="${rootPath}/static/img/svg/sns_facebook.svg"
										alt="페이스북" />
								</figure> <span>페이스북</span>
						</a></li>
						<li><a href="#none">
								<figure>
									<img src="${rootPath}/static/img/svg/sns_kakaostory.svg"
										alt="카카오스토리" />
								</figure> <span>카카오스토리</span>
						</a></li>
						<li><a href="#none">
								<figure>
									<img src="${rootPath}/static/img/svg/sns_instagram.svg"
										alt="인스타그램" />
								</figure> <span>인스타그램</span>
						</a></li>
						<li><a href="#none">
								<figure>
									<img src="${rootPath}/static/img/svg/sns_more.svg" alt="더보기" />
								</figure> <span>더보기</span>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--// Modal SNS공유 -->

	<!-- Modal 전화걸기 -->
	<div class="modal fade" id="callModal" tabindex="-1"
		aria-labelledby="callModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-center" id="callModalLabel">전화걸기</h5>
				</div>
				<div class="modal-body text-center">
					<p>
						[안심번호로 안심하고 통화하세요]<br />라이브투어에서 전화연결 시 녹음에 동의되며<br />안심번호로
						연결됩니다.
					</p>
				</div>
				<div class="modal-footer-btm">
					<div class="row no-gutters">
						<div class="col-6">
							<a href="#none" class="btn btn-primary btn-lg btn-block"
								data-dismiss="modal">확인</a>
						</div>
						<div class="col-6">
							<a href="#none" class="btn btn-third btn-lg btn-block"
								data-dismiss="modal">닫기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--// Modal 전화걸기 -->

	<!-- JS and JavaScript -->
	<script src="${rootPath}/static/js/jquery.min.js"></script>
	<script src="${rootPath}/static/js/bootstrap.bundle.min.js"></script>
	<script src="${rootPath}/static/js/jquery-1.12.4.min.js"></script>
	<script src="${rootPath}/static/js/jquery.touchSwipe.min.js"></script>
	<script src="${rootPath}/static/js/default.js"></script>
	<script src="${rootPath}/static/js/swiper.min.js"></script>
	<script src="${rootPath}/static/js/jquery.rateit.min.js"></script>

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