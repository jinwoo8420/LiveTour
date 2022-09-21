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
			<span class="navbar-title">개인정보 제 3자 제공 동의</span>
		</nav>
		<!-- // Navigation -->
		<hr class="mt-0"/>

		<!-- 데이터 -->
		<div class="container nopadding mt-0">		
			<div class="padding policy">

						<p>"라이브투어"에서는 "회원"의 예약/결제 서비스 제공 등을 위해 최소한의 개인정보를 수집/제공하고 있습니다.</p>
						<p class="clearfix"></p>
						
						<p>(1)"라이브투어" 개인정보 수집 및 이용 목적 및 항목, 보유기간은 아래와 같습니다.</p>
						<p>"회원"은 정보 수집/이용 약관에 동의하지 않을 수 있으며, 동의하지 않는 경우 예약 서비스 이용에 제한이 있을 수 있습니다.</p>
						<p class="clearfix"></p>


						<table class="table table-bordered">
						<colgroup>
							<col style="width:20%">
							<col style="width:40%">
							<col style="width:40%">
						</colgroup>
						<thead>
						<tr>
								<th>수집/이용 목적</th>
								<th>위탁 업무 내용</th>
								<th>개인 정보의 보유 및 이용 기간</th>
						</tr>
						</thead>
						<tbody>
						<tr>
								<th>예약 및 구매 서비스 이용</th>
								<td>예약자명, 휴대폰 번호, 결제정보</td>
								<td>전자상거래 상 소비자보호에 관한 법률에 따라 5년 간 보관</td>
						</tr>
						<tr>
								<th>결제 서비스 이용</th>
								<td>- 신용카드 결제 : 카드사명, 카드번호, 유효기간, 이메일 등<br/>
										- 휴대폰 결제 : 휴대폰 번호, 통신사, 결제 승인번호 등<br/>
										- 계좌 이체 시 : 은행명, 계좌번호, 예금주<br/>
										- 간편 결제 시: 계좌번호, 결제(통합) 비밀번호
								</td>
								<td>전자상거래 상 소비자보호에 관한 법률에 따라 5년 간 보관</td>
						</tr>
						<tr>
								<th>서비스 이용 및 부정거래 기록 확인</th>
								<td>서비스 이용 시간/이용기록, 접속로그, 이용콘텐츠, 쿠키, 접속IP정보, 주소, 사용된 신용카드 정보, 기기 모델명, 브라우저 정보</td>
								<td>통신비밀보호법에 따라 3개월간 보관</td>
						</tr>
						</tbody>
						</table>
						<p class="clearfix"></p>

						<p>
							(2) 회원 정보를 제공받는자, 제공목적, 제공하는 정보, 보유/이용기간은 아래와 같습니다.
						</p>
						<p class="clearfix"></p>

						<table class="table table-bordered">
						<colgroup>
							<col style="width:20%">
							<col style="width:80%">
						</colgroup>
						<tbody>
						<tr>
								<th>제공받는 자</th>
								<td>라이브투어 상품예약 서비스 제공 업체[업체리스트]</td>
						</tr>
						<tr>
								<th>제공 목적</th>
								<td>라이브투어 상품예약 서비스 이용계약 이행(서비스 제공, 확인, 이용자 정보 확인)</td>
						</tr>
						<tr>
								<th>제공하는 정보</th>
								<td>예약한 서비스의 이용자 정보(예약자 이름, 휴대폰번호, 예약자 안심번호, 예약번호, 예약한 업체명, 예약한 상품명, 결제금액)</td>
						</tr>
						<tr>
								<th>제공받는 자의 <br/>개인정보보유 및 이용기간</th>
								<td>상품예약 서비스 제공 완료 후 6개월</td>
						</tr>
						</tbody>
						</table>
						<p class="clearfix"></p>

						<p>
							(3) 상위 (1), (2) 외 사항은 라이브투어 이용약관, 개인정보처리방침 운영에 따릅니다.
						</p>

			</div>
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
</html>tml>