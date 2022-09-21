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

<style>
img.weather_img {
	width: 50px;
}
</style>

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
		<!-- <ol class="carousel-indicators">
				<li data-target="#carousel-visual-detail" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-visual-detail" data-slide-to="1"></li>
				<li data-target="#carousel-visual-detail" data-slide-to="2"></li>
			</ol>-->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="${rootPath}/static/img/sample/photob2.jpg"
					class="d-block w-100" alt=""> <span class="play"> <img
					src="${rootPath}/static/img/svg/live-play-big.svg" alt="">
				</span>
				<div class="play-progress">
					<div class="play-progress-time">01:21</div>
					<div class="play-bar">
						<div class="play-on" style="width: 15%;"></div>
					</div>
					<span class="play-control" style="left: 20%;"></span>
					<div class="play-progress-time-all">02.57</div>
				</div>
				<div class="float-btm-right">
					<a href="#none"> <img
						src="${rootPath}/static/img/svg/play-sound-on.svg" alt="사운드켜기" />
					</a>
					<!-- <a href="#none"><img src="${rootPath}/static/img/svg/play-sound-off.svg" alt="사운드끄기"/></a> -->
					<a href="#none"> <img
						src="${rootPath}/static/img/svg/play-expand.svg" alt="전체보기" />
					</a>
					<!-- <a href="#none"><img src="${rootPath}/static/img/svg/play-compress.svg" alt="축소보기"/></a> -->
				</div>
			</div>
		</div>
	</div>
	<!--// 상품이미지 -->

	<!-- 상품타이틀 -->
	<div class="container nopadding">
		<div class="card mt-3">
			<h4>${COMMONDETAIL.title}</h4>
			<div class="rateit-wrap">
				<span class="float-left addr">${COMMONDETAIL.addr1}</span>
				&nbsp;&nbsp;
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

	<!-- 날씨 -->
	<div class="container nopadding">
		<div class="mt-0 mb-0">
			<div class="row no-gutters align-items-center">

				<div class="col-6">
					<strong>현재기온: ${WEATHER[0].fcstValue}℃</strong>

					<c:if test="${WEATHER[5].fcstValue eq '1'}">
								맑음
               <img class="weather_img"
							src="${rootPath}/static/img/Sunny.png"> &nbsp&nbsp
                  </c:if>

					<c:if test="${WEATHER[5].fcstValue eq '3'}">
               구름 많음
               <img class="weather_img"
							src="${rootPath}/static/img/Cloud.png"> &nbsp&nbsp
                  </c:if>

					<c:if test="${WEATHER[5].fcstValue eq '4'}">
               흐림
               <img class="weather_img"
							src="${rootPath}/static/img/Cloudy.png"> &nbsp&nbsp
                  </c:if>
				</div>

				<div class="col-6 text-right">
					<strong>습도: ${WEATHER[10].fcstValue}%</strong>
				</div>

			</div>
		</div>
		<div class="space mt-3"></div>
	</div>
	<!--// 날씨 -->



	<!-- 탭메뉴 -->
	<nav class="nav nav-pills nav-menu nav-justified" id="nav-tab"
		role="tablist">
		<a class="nav-link active" id="nav-home-tab" data-toggle="tab"
			href="#nav-home" role="tab" aria-controls="nav-home"
			aria-selected="true">상세정보</a> <a class="nav-link" id="nav-tour-tab"
			data-toggle="tab" href="#nav-tour" role="tab"
			aria-controls="nav-tour" aria-selected="false">주변관광</a> <a
			class="nav-link" id="nav-food-tab" data-toggle="tab" href="#nav-food"
			role="tab" aria-controls="nav-food" aria-selected="false">주변맛집</a> <a
			class="nav-link" id="nav-lodge-tab" data-toggle="tab"
			href="#nav-lodge" role="tab" aria-controls="nav-lodge"
			aria-selected="false">주변숙박</a> <a class="nav-link" id="nav-talk-tab"
			data-toggle="tab" href="#nav-talk" role="tab"
			aria-controls="nav-talk" aria-selected="false">여행톡</a>
	</nav>
	<!--// 탭메뉴 -->

	<div class="tab-content" id="nav-tabContent">
		<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
			aria-labelledby="nav-home-tab">
			<!-- 상세정보 -->
			<div class="container nopadding mt-3">
				<h5>상세정보</h5>
				<p>${COMMONDETAIL.overview}</p>
			</div>
			<!--// 상세정보 -->

			<!-- Visual Carousel -->
			<div id="carousel-visual" class="carousel slide mt-3"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carousel-visual" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-visual" data-slide-to="1"></li>
					<li data-target="#carousel-visual" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="${COMMONDETAIL.firstimage}" class="d-block w-100" alt=""
							onerror="this.src='${rootPath}/static/img/profile/no_img.jpeg'">
					</div>
					<!-- 엑박처리 할 것 -->
					<div class="carousel-item">
						<img src="${COMMONDETAIL.firstimage}" class="d-block w-100" alt=""
							onerror="this.src='${rootPath}/static/img/profile/no_img.jpeg'">
					</div>
					<!-- 엑박처리 할 것 -->
					<div class="carousel-item">
						<img src="${COMMONDETAIL.firstimage}" class="d-block w-100" alt=""
							onerror="this.src='${rootPath}/static/img/profile/no_img.jpeg'">
					</div>
					<!-- 엑박처리 할 것 -->
				</div>
			</div>
			<!--// Visual Carousel -->
			<div class="clearfix"></div>
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
						<a target='_blank'
							href="https://map.kakao.com/link/to/${COMMONDETAIL.title},${COMMONDETAIL.mapy},${COMMONDETAIL.mapx}">
							<div class="padding">
								<img src="${rootPath}/static/img/svg/icon-map.svg" alt=""
									class="vam" /> 길찾기
							</div>
						</a>
					</div>

					<div class="col-6 text-center align-self-center border-right">
						<a href="#none" onclick="copy_to_clipboard(); return false;">
							<div class="padding">
								<img src="${rootPath}/static/img/svg/icon-copy.svg" alt=""
									class="vam" /> 주소복사
							</div>
						</a>
					</div>
				</div>
				<div class="space"></div>
			</div>
			<!--// 위치정보 -->
			<div class="container nopadding">
				<ul class="list mb-2">
					<c:choose>
						<c:when test="${empty COMMONDETAIL.tel}">
							<li><strong class="listdt">문의 및 안내</strong>제공된 전화번호가 없습니다.</li>
						</c:when>
						<c:when test="${not empty COMMONDETAIL.tel}">
							<li><strong class="listdt">문의 및 안내</strong>${COMMONDETAIL.tel}</li>
						</c:when>
					</c:choose>
					<li><strong class="listdt">홈페이지</strong>${COMMONDETAIL.homepage}</li>
					<li><strong class="listdt">주소</strong>${COMMONDETAIL.addr1}</li>
					<li><strong class="listdt">주차</strong>${TOURDETAIL.parking}</li>
				</ul>
			</div>
		</div>



		<div class="tab-pane fade" id="nav-tour" role="tabpanel"
			aria-labelledby="nav-tour-tab">
			<div class="container nopadding mt-3">
				<h5>주변관광</h5>
				<div class="row">

					<c:forEach items="${AROUND}" begin="1" end="5" var="AROUND">
						<div class="col-12 mt-2"
							OnClick="location.href ='${rootPath}/detail/detail/${AROUND.contentid}'">
							<div class="imgWrap" data-isbn="${AROUND.contentid}">
								<span class="play-live"> <small class="sr-only">LIVE</small>
								</span> <img src="${AROUND.firstimage}" class="img-fluid" alt=""
									onerror="this.src='${rootPath}/static/img/default-img.jpg'">
								<!-- 엑박처리 할 것 -->
								<div class="InfoWrap">
									<h4>${AROUND.title}</h4>
									<p>${AROUND.addr1}</p>
								</div>
							</div>
						</div>

						<div class="clearfix"></div>
					</c:forEach>
				</div>
			</div>
		</div>

		<div class="tab-pane fade" id="nav-food" role="tabpanel"
			aria-labelledby="nav-food-tab">
			<div class="container nopadding mt-3">
				<h5>주변맛집</h5>
				<div class="row">

					<c:forEach items="${AROUNDFOOD}" begin="1" end="5" var="AROUND">
						<div class="col-12 mt-2"
							OnClick="location.href ='${rootPath}/detail/detail-restaurant/${AROUND.contentid}'">
							<div class="imgWrap" data-isbn="${AROUND.contentid}">
								<span class="play-live"> <small class="sr-only">LIVE</small>
								</span> <img src="${AROUND.firstimage}" class="img-fluid" alt=""
									onerror="this.src='${rootPath}/static/img/profile/no_img.jpeg'">
								<!-- 엑박처리 할 것 -->
								<div class="InfoWrap">
									<h4>${AROUND.title}</h4>
									<p>${AROUND.addr1}</p>
								</div>
							</div>
						</div>

						<div class="clearfix"></div>
					</c:forEach>

				</div>
			</div>
		</div>

		<div class="tab-pane fade" id="nav-lodge" role="tabpanel"
			aria-labelledby="nav-lodge-tab">
			<div class="container nopadding mt-3">
				<h5>주변숙박</h5>
				<div class="row">

					<c:forEach items="${AROUNDLODGE}" begin="1" end="5" var="AROUND">
						<div class="col-12 mt-2"
							OnClick="location.href ='${rootPath}/detail/detail-lodge/${AROUND.contentid}'">
							<div class="imgWrap" data-isbn="${AROUND.contentid}">
								<span class="play-live"> <small class="sr-only">LIVE</small>
								</span> <img src="${AROUND.firstimage}" class="img-fluid" alt=""
									onerror="this.src='${rootPath}/static/img/profile/no_img.jpeg'">
								<!-- 엑박처리 할 것 -->
								<div class="InfoWrap">
									<h4>${AROUND.title}</h4>
									<p>${AROUND.addr1}</p>
								</div>
							</div>
						</div>

						<div class="clearfix"></div>
					</c:forEach>
				</div>
			</div>
		</div>



		<div class="tab-pane fade" id="nav-talk" role="tabpanel"
			aria-labelledby="nav-talk-tab">

			<h5>여행톡</h5>

			<!--  List -->
			<c:forEach items="${COMMENT}" var="com">
				<div class="container nopadding mt-3">
					<div class="row-story-col top">
						<div class="col">
							<a href="${rootPath}/user/profile-user">
								<figure>
									<c:if test="${not empty com.profile_up_img}">
										<img class="profile-thumb-md align-self-center mr-2"
											src="${rootPath}/upload/${com.profile_up_img}">
									</c:if>

									<c:if test="${empty com.profile_up_img}">
										<img class="profile-thumb-md align-self-center mr-2"
											src="${rootPath}/static/img/profile/no_img.jpeg">
									</c:if>
								</figure>
							</a>
						</div>

						<div class="col">
							<strong>${com.nickname}</strong> · <small class="grey">${com.reg_time}</small>
							<strong style="display: none;">${com.username}</strong>

							<br /> ${com.comment} <br /> <small class="grey">좋아요 개
								· <a href="#none" class="grey">답글달기</a>
							</small>
						</div>
						<div class="col">
							<a href="#none" data-toggle="modal" data-target="#ellipsisModal">
								<img src="${rootPath}/static/img/svg/icon-ellipsis.svg"
								alt="메뉴더보기" />
							</a> <br />

							<form method="POST"
								action="${rootPath}/detail/${COMMONDETAIL.contentid}/likeinsert">
								<button class="" type="submit">
									<span class="icon icon-good mt-2"></span>
								</button>
							</form>
						</div>
					</div>
					<hr class="full mt-3 mb-3" />
				</div>

				<!-- Modal 메뉴더보기 -->
				<div class="modal fade" id="ellipsisModal" tabindex="-1"
					role="dialog" aria-labelledby="ellipsisModalLabel">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content modal-sm modal-xs">
							<div class="modal-body">
								<div class="list-group">
									<a href="#" class="list-group-item" data-dismiss="modal"
										data-toggle="modal" data-target="#delModal">삭제하기</a> <a
										href="#" class="list-group-item" data-dismiss="modal">닫기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end Modal 메뉴더보기 -->

				<!-- Modal 삭제하기 -->
				<div class="modal fade" id="delModal" tabindex="-1"
					aria-labelledby="delModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-sm modal-dialog-centered">
					
						<div class="modal-content">
							<div class="modal-body text-center">
								<p>${com.comment}</p>
								<p>삭제하시겠습니까?</p>
							</div>
							<div class="modal-footer-btm">
								<div class="row">
									<div class="col-6">
										<a
											href="${rootPath}/detail/detail/${COMMONDETAIL.contentid}/${com.c_seq}/comdelete"
											class="btn btn-primary btn-lg btn-block">확인</a>
									</div>
									<div class="col-6">
										<a href="#none" class="btn btn-third btn-lg btn-block"
											data-dismiss="modal">취소</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--// Modal 삭제하기 -->
			</c:forEach>
			<!-- // List -->

			<!--  List -->
			<div class="container nopadding">
				<div class="row-story-col top">
					<div class="col">
						<a href="${rootPath}/user/profile-user">
							<figure>
								<img src="${rootPath}/static/img/sample/profile4.jpg" alt="" />
							</figure>
						</a>
					</div>
					<div class="col">
						<strong>우주로</strong> · <small class="grey">11분전</small><br />
						멋지네요 바다에 가고 싶어요.<br /> <small class="grey">좋아요 0개 · <a
							href="#none" class="grey">답글달기</a></small>
					</div>
					<div class="col">
						<a href="#none" data-toggle="modal" data-target="#ellipsisModal">
							<img src="${rootPath}/static/img/svg/icon-ellipsis.svg"
							alt="메뉴더보기" />
						</a> <br /> <a href="#none"> <span
							class="icon icon-good active mt-2"></span>
						</a>
					</div>
				</div>
				<hr class="full mt-3 mb-3" />
			</div>
			<!-- // List -->

			<!--  List -->
			<div class="container nopadding">
				<div class="row-story-col top re">
					<div class="col">
						<span class="icon-re"></span> <a
							href="${rootPath}/user/profile-user">
							<figure>
								<img src="${rootPath}/static/img/sample/profile1.jpg" alt="" />
							</figure>
						</a>
					</div>
					<div class="col">
						<strong>우주로</strong> · <small class="grey">11분전</small><br /> 시원한
						여름 바다에 다녀왔어요.<br /> <small class="grey">좋아요 0개 · <a
							href="#none" class="grey">답글달기</a></small>
					</div>
					<div class="col">
						<a href="#none" data-toggle="modal" data-target="#ellipsisModal">
							<img src="${rootPath}/static/img/svg/icon-ellipsis.svg"
							alt="메뉴더보기" />
						</a> <br /> <a href="#none"> <span class="icon icon-good mt-2"></span>
						</a>
					</div>
				</div>
				<hr class="full mt-3 mb-3" />
			</div>
			<!-- // List -->

			<!-- Comment -->
			<div class="tab_barwrap fixed-bottom">
				<div class="container nopadding">
				
					<c:if test="${empty USER}">
						<div class="form-line" style="margin-top: 1px;">
							<div class="form-group row">
								<div class="col-10">
									<p class="form-control no-line ml-4">댓글 입력은 로그인 필요</p>
								</div>
								
								<div class="col-2 text-right">
									<a class="btn btn-primary btn-sm-nav-tab" href="${rootPath}/user/login">로그인</a>
								</div>
							</div>
						</div>
					</c:if>
				
					<c:if test="${not empty USER}">
						<form class="form-line" style="margin-top: 1px;" method="POST">
							<div class="form-group row">
								<div class="col-10">
									<a href="story-add-photo" class="float-photo"> <img
										src="${rootPath}/static/img/svg/icon-photo.svg" alt="사진"
										class="icon-sm" />
									</a>
									 
									<input name="comment" type="text"
										class="form-control no-line ml-4" id="inputName"
										placeholder="댓글을 입력해주세요.">
									<input name="username" type="hidden" value="${USER.username}">
									<input name="nickname" type="hidden" value="${USER.nickname}">
									<input name="content_id" type="hidden"
										value="${COMMONDETAIL.contentid}">
	
								</div>
								<div class="col-2 text-right">
									<button class="btn btn-primary btn-sm-nav-tab">등록</button>
								</div>
							</div>
						</form>
					</c:if>
				</div>
			</div>
			<!-- /end Comment -->
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
							<li><a id="kakaotalk-sharing-btn"> <!-- 공유하기 버튼 연결 -->
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




		<!-- Kakao 공유하기 시작  -->
		<!-- 카카오 공유하기 위한 필수 js -->
		<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
		<script type="text/javascript">
		
		/* kakao developer 에서 js key 값 가져오기  */
		Kakao.init("f03c88bcd77572e88d422c4306a16404");
		
		/* 공유하기 버튼 만들기 */
		Kakao.Share.createDefaultButton({
					container : "#kakaotalk-sharing-btn", // 임의로 만든 버튼 id 연결
					objectType : "list", //type 지정하기
					headerTitle : 'HYOSUN', // header 제목 
					headerLink : {
						mobileWebUrl : '',
						webUrl : '',
					},
					contents : [ //공유 게시글 생성 
							{
								title : '${COMMONDETAIL.title}', // 본문 제목 
								description : '${COMMONDETAIL.addr1}', //본문 내용 
								imageUrl:
							        '${COMMONDETAIL.firstimage2}', //본문 썸네일
								link : { //본문 링크
									mobileWebUrl: 'https://search.naver.com/search.naver?query=' + '${COMMONDETAIL.title}',
							        webUrl: 'https://search.naver.com/search.naver?query=' + '${COMMONDETAIL.title}',
								},
							},
							
							 {
							      title: '${AROUND[0].title}',
							      description: '${AROUND[0].addr1}',
							      imageUrl: '${AROUND[0].firstimage2}',
							      link: {
							        mobileWebUrl: 'https://search.naver.com/search.naver?query=' + '${AROUND[0].title}',
							        webUrl: 'https://search.naver.com/search.naver?query=' + '${AROUND[0].title}',
							      },
							    },
							    
							 {
							      title: '${AROUND[1].title}',
							      description: '${AROUND[1].addr1}',
							      imageUrl: '${AROUND[1].firstimage2}',
							      link: {
							    	  mobileWebUrl: 'https://search.naver.com/search.naver?query=' + '${AROUND[1].title}',
							        webUrl: 'https://search.naver.com/search.naver?query=' + '${AROUND[1].title}',
							      },
							    },
					],
					buttons: [ // 있어도 그만 없어도 그만~
					    {
					        title: 'HYOSUN',
					        link: {
					          mobileWebUrl: 'https://search.naver.com/search.naver?query='+'임효선',
					          webUrl: 'https://search.naver.com/search.naver?query='+'임효선',
					        },
					      },
					    ],
					  }); 
	</script>


		<!—주소 복사 코드  —>
		<script>
	function copy_to_clipboard() {  
		  const copyText = document.querySelector('span.addr').textContent;
			console.log(copyText);
			const textArea = document.createElement('textarea');
			document.body.appendChild(textArea);
			textArea.value = copyText;
		  textArea.select();
		  // copyText.setSelectionRange(0, 99999);
		  document.execCommand("Copy");
		document.body.removeChild(textArea);
		  alert('복사되었습니다, 감사합니다.');
		}
	</script>
</body>
</html>