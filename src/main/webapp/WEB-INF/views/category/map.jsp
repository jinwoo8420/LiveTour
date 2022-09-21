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
	<!-- Navigation -->
	<nav class="navbar fixed-top navbar-dark bg-primary">
		<a href="javascript:history.back();" class="nav-left"><img
			src="${rootPath}/static/img/svg/navbar-back.svg" alt="뒤로가기" /></a> <span
			class="navbar-title">지도</span> <a
			href="${rootPath}/category/recommend_detail/search"><img
			src="${rootPath}/static/img/svg/navbar-search.svg" alt="Search" /></a>
	</nav>
	<!-- // Navigation -->

	<!-- 리스트 -->
	<div class="container nopadding">
		<div class="mapwrap d-flex align-items-center">

			<ul class="marker-list">
				<li class="active"><a href="#none"><figure class="bg">
							<span class="play-live"></span>
						</figure> <span>라이브</span></a></li>

				<li class="active"><form>
						<a id="btn_tour" href="#none" onclick="return tourKeywordSearch()"><figure
								class="bg1">
								<img src="${rootPath}/static/img/svg/marker-tour.svg" alt=""
									class="vam" />
							</figure> <span id="val_tour">관광지</span></a>
					</form></li>

				<li class="active"><form>
						<a id="btn_food" href="#none" onclick="return foodKeywordSearch()"><figure
								class="bg2">
								<img src="${rootPath}/static/img/svg/marker-restaurant.svg"
									alt="" class="vam" />
							</figure> <span id="val_food">맛집</span></a>
					</form></li>

				<li class="active">
					<form>
						<a id="btn_lodge" href="#none" onclick="return lodgeKeywordSearch()"><figure
								class="bg3">
								<img src="${rootPath}/static/img/svg/marker-lodge.svg" alt=""
									class="vam" />
							</figure> <span id="val_lodge">숙박</span></a>
					</form>
				</li>

			</ul>
			<div id="map">
				<!-- 마커아이콘 -->
				<%-- <a href="#none" data-toggle="modal" data-target="#infoModal"><div class="marker bg1" style="position:absolute; top:100px; left:120px;"><figure><img src="${rootPath}/static/img/svg/marker-tour.svg" alt="관광지"/></figure><strong>남이섬 남이나루</strong></div></a>
					<a href="#none" data-toggle="modal" data-target="#infoModal"><div class="marker orange" style="position:absolute; top:270px; left:170px;"><figure><img src="${rootPath}/static/img/svg/marker-restaurant.svg" alt="맛집"/></figure><strong>경복궁집</strong></div></a>
					<a href="#none" data-toggle="modal" data-target="#infoModal"><div class="marker yellow" style="position:absolute; top:330px; left:270px;"><figure><img src="${rootPath}/static/img/svg/marker-lodge.svg" alt="숙박"/></figure><strong>남이펜션</strong></div></a>
					<a href="#none" data-toggle="modal" data-target="#infoModal"><div class="marker bg1" style="position:absolute; top:400px; left:70px;"><figure><img src="${rootPath}/static/img/svg/marker-tour.svg" alt="관광지"/></figure><strong>남이섬 남이나루</strong></div></a>
					<a href="#none" data-toggle="modal" data-target="#infoModal"><div class="marker orange" style="position:absolute; top:470px; left:150px;"><figure><img src="${rootPath}/static/img/svg/marker-restaurant.svg" alt="맛집"/></figure><strong>경복궁집</strong></div></a>
					<a href="#none" data-toggle="modal" data-target="#infoModal"><div class="marker yellow" style="position:absolute; top:530px; left:190px;"><figure><img src="${rootPath}/static/img/svg/marker-lodge.svg" alt="숙박"/></figure><strong>남이펜션</strong></div></a>
 --%>
				<%-- <img src="${rootPath}/static/img/svg/marker-me.svg" alt=""
					class="pointer-me" style="top: 50%; left: 50%;" /> --%>
				<!-- / 마커아이콘-->
				<script
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f03c88bcd77572e88d422c4306a16404&libraries=services"></script>
				<script>
					var container = document.getElementById('map');
					var options = {
						center : new daum.maps.LatLng(37.7899352, 127.5258072),
						level : 7
					};
					var map = new daum.maps.Map(container, options);

					function currentLocation() {
						// HTML5의 geolocation으로 사용할 수 있는지 확인합니다
						if (navigator.geolocation) {

							// GeoLocation을 이용해서 접속 위치를 얻어옵니다
							navigator.geolocation.getCurrentPosition(function(position) {
					
								var lat = position.coords.latitude, // 위도
								    lon = position.coords.longitude; // 경도
					
								var locPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
								var message = '<div style="padding:5px;">' + '현위치' + '</div>'; // 인포윈도우에 표시될 내용입니다
								
								function getAddr(lat, lng) {
									let geocoder = new kakao.maps.services.Geocoder();

									let coord = new kakao.maps.LatLng(lat, lng);
									let callback = function(result, status) {
										if (status === kakao.maps.services.Status.OK) {
											console.log(result[0].road_address.address_name);
										}
									}
									geocoder.coord2Address(coord.getLng(), coord.getLat(),
											callback);
									
									// 마커와 인포윈도우를 표시합니다
									displayMarker(locPosition, message);
								}
								
								getAddr(lat,lon);
							});
						} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

							var locPosition = new kakao.maps.LatLng(37.7899352,
									127.5258072), message = '현재 위치를 알 수 없어 기본 위치로 이동합니다.'

							displayMarker(locPosition, message);
						}

						return true
					}

					currentLocation();

					function displayMarker(locPosition, message) {
						var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
						var imageSize = new kakao.maps.Size(24, 35);
						var markerImage = new kakao.maps.MarkerImage(imageSrc,
								imageSize);

						// 마커를 생성합니다
						var marker = new kakao.maps.Marker({
							map : map,
							position : locPosition,
							image : markerImage,
						});

						var iwContent = message, // 인포윈도우에 표시할 내용
						iwRemoveable = true;

						// 인포윈도우를 생성합니다
						var infowindow = new kakao.maps.InfoWindow({
							content : iwContent,
							removable : iwRemoveable
						});

						// 인포윈도우를 마커위에 표시합니다
						infowindow.open(map, marker);

						// 지도 중심좌표를 접속위치로 변경합니다
						map.setCenter(locPosition);
					}
					
					function tourKeywordSearch(){
					    var val_tour = document.querySelector("span#val_tour").innerText;
					    var val_food = document.querySelector("span#val_food").innerText;
					    var val_lodge = document.querySelector("span#val_lodge").innerText;
					    var markers = [];

					    // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
					    var infowindow = new kakao.maps.InfoWindow({zIndex:1});

					    // 장소 검색 객체를 생성합니다
					    var ps = new kakao.maps.services.Places(map);

					    // 검색 옵션 객체
					    var searchOption = {
					        location: currentPos,
					        radius: 1000,
					        size: 5
					    };

					    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
					    ps.tourKeywordSearch(val_tour,placesSearchCB,searchOption);

					    // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
					    function placesSearchCB(data, status, pagination) {
					        if (status === kakao.maps.services.Status.OK) {

					            // 정상적으로 검색이 완료됐으면
					            // 검색 목록과 마커를 표출합니다
					            displayPlacesOnSidebar(data);

					            // 페이지 번호를 표출합니다
					            displayPagination(pagination);

					        } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

					            alert('검색 결과가 존재하지 않습니다.');
					            return;

					        } else if (status === kakao.maps.services.Status.ERROR) {

					            alert('검색 결과 중 오류가 발생했습니다.');
					            return;

					        }
					    }

					    // 사이드바에 결과 출력 + 마커 생성
						function displayPlacesOnSidebar(places) {

					        var listEl = document.getElementById('placesList'),
					            menuEl = document.getElementsByClassName('result-list'),
					            fragment = document.createDocumentFragment(),
					            bounds = new kakao.maps.LatLngBounds(),
					            listStr = '';
					
					        // 검색 결과 목록에 추가된 항목들을 제거합니다
					        removeAllChildNods(listEl);
					
					        // 지도에 표시되고 있는 마커를 제거합니다
					        removeMarker();
					
					        for ( var i=0; i<places.length; i++ ) {
					
					            // 마커를 생성하고 지도에 표시합니다
					            var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
					                marker = addMarker(placePosition, i),
					                itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
					
					            // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					            // LatLngBounds 객체에 좌표를 추가합니다
					            bounds.extend(placePosition);
					
					            // 마커와 검색결과 항목에 mouseover 했을때
					            // 해당 장소에 인포윈도우에 장소명을 표시합니다
					            // mouseout 했을 때는 인포윈도우를 닫습니다
					            (function(marker, title) {
					                kakao.maps.event.addListener(marker, 'mouseover', function() {
					                    displayInfowindow(marker, title);
					                });
					
					                kakao.maps.event.addListener(marker, 'mouseout', function() {
					                    infowindow.close();
					                });
					
					                itemEl.onmouseover =  function () {
					                    displayInfowindow(marker, title);
					                };
					
					                itemEl.onmouseout =  function () {
					                    infowindow.close();
					                };
					            })(marker, places[i].place_name);
					
					            fragment.appendChild(itemEl);
					        }
					
					        // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
					        listEl.appendChild(fragment);
					        menuEl.scrollTop = 0;
					
					        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
					        map.setBounds(bounds);
					    }


					    // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
					    function addMarker(position, idx, title) {
					        var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
					            imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
					            imgOptions =  {
					                spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
					                spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
					                offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
					            },
					            markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
					            marker = new kakao.maps.Marker({
					                position: position, // 마커의 위치
					                image: markerImage
					            });

					        marker.setMap(map); // 지도 위에 마커를 표출합니다
					        markers.push(marker);  // 배열에 생성된 마커를 추가합니다

					        return marker;
					    }

					    // 지도 위에 표시되고 있는 마커를 모두 제거합니다
					    function removeMarker() {
					        for ( var i = 0; i < markers.length; i++ ) {
					            markers[i].setMap(null);
					        }
					        markers = [];
					    }

					    // 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
						// 인포윈도우에 장소명을 표시합니다
					    function displayInfowindow(marker, title) {
					        var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

					        infowindow.setContent(content);
					        infowindow.open(map, marker);
					    }
					}
				</script>
			</div>
		</div>
	</div>
	<!--// 리스트 -->

	<!-- Modal 정보 -->
	<div class="modal show modal-full-btm radius" id="infoModal"
		tabindex="-1" aria-labelledby="infoModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<a href="#none" data-dismiss="modal" class="float-top-right"><img
						src="${rootPath}/static/img/svg/icon_close_grey.svg" alt="" /></a> <a
						href="${rootPath}/detail/detail">
						<div class="card card-sm">
							<div class="row no-gutters d-flex align-items-center">
								<div class="cardimgWrap">
									<span class="play-live"></span> <img
										src="${rootPath}/static/img/sample/photob1.jpg"
										class="img-fluid" alt="" />
								</div>
								<div class="cardInfoWrap">
									<div class="card-body">
										<h6>남이섬 남이나루</h6>
										<p>
											<strong>강원도 춘천시 남산면 방하리 198-2</strong><br />내 위치에서 721km
										</p>
										<a href="#none" class="btn btn-dark btn-round btn-xs mt-2"><i
											class="bi bi-arrow-90deg-right mr-1"></i>길안내</a>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!--// Modal 정보 -->

	<!-- Tab Menu -->
	<div class="tab_barwrap fixed-bottom">
		<div class="container nopadding">
			<nav class="nav nav-pills nav-tab nav-justified">
				<a class="nav-link" href="${rootPath}/index"><figure
						class="tab_home"></figure>홈</a> <a class="nav-link"
					href="${rootPath}/category/recommend"><figure
						class="tab_recommend"></figure>추천</a> <a class="nav-link"
					href="${rootPath}/category/region"><figure class="tab_region"></figure>지역</a>
				<a class="nav-link active" href="${rootPath}/category/map"><figure
						class="tab_map"></figure>지도</a> <a class="nav-link"
					href="${rootPath}/category/my"><figure class="tab_my"></figure>마이메뉴</a>
			</nav>
		</div>
	</div>
	<!-- /end Tab Menu -->

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

	<script>
		function ViewLayerPopTour() {
			document.getElementById("LayerPopTour").style.display = 'inline'
		}
		function CloseLayerPopTour() {
			document.getElementById("LayerPopTour").style.display = 'none';
		}
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
</body>
</html>