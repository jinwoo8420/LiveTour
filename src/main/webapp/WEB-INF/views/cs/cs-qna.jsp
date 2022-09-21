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
		<a href="javascript:history.back();" class="nav-left">
			<img src="${rootPath}/static/img/svg/navbar-back.svg" alt="뒤로가기" />
		</a>
		<span class="navbar-title">고객센터</span>
	</nav>
	<!-- // Navigation -->
	<hr class="mt-0 mb-0" />

	<!-- 탭메뉴 -->
	<nav class="nav nav-pills nav-menu nav-justified">
		<a class="nav-link" href="${rootPath}/cs/cs-faq">자주하는 질문</a>
		<a class="nav-link active" href="${rootPath}/cs/cs-qna">1:1문의</a>
		<a class="nav-link" href="${rootPath}/cs/cs-apply">제휴요청</a>
	</nav>
	<!--// 탭메뉴 -->

	<!-- 탭메뉴 -->
	<nav class="nav nav-pills nav-menu nav-justified">
		<a class="nav-link active" href="${rootPath}/cs/cs-qna">문의하기</a>
		<a class="nav-link" href="${rootPath}/cs/cs-qna-list">문의내역</a>
	</nav>
	<!--// 탭메뉴 -->

	<!-- 데이터 -->
	<div class="container nopadding mt-3">
		<p class="text-right">
			<strong class="required"></strong> 필수항목입니다.
		</p>

		<form class="qnaForm" method="POST">
			<input type="hidden" name="username" value="${USER.username}">
			<div class="row">
				<div class="col-xs-12 col-sm-12 apply ">

					<div class="form-group">
						<div class="input-group">
							<label class="input-group-addon">카테고리<strong class="required"></strong></label> <select class="form-control" id="selCategory" name="Category">
								<option value="0">카테고리를 선택하세요</option>
								<option value="관광정보">관광정보</option>
								<option value="회원정보">회원정보</option>
								<option value="이용방법">이용방법</option>
								<option value="기타문의">기타문의</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<label class="input-text-addon" for="inputMemo">내용<strong class="required"></strong></label>
							<textarea name="Memo" class="form-control" rows="9" placeholder="내용을 작성하세요" id="inputMemo"></textarea>
						</div>
					</div>

					<label class="control radio mt-3 mr-3"> <input name="tel" type="radio" class="add-contrast radio_tel" data-role="collar"> <span class="control-indicator control-tel"></span><span class="control-text">전화번호</span>
					</label> <label class="control radio mt-3"> <input name="email" type="radio" class="add-contrast radio_email" data-role="collar"> <span class="control-indicator control-email"></span><span class="control-text">이메일</span>
					</label>

					<div class="form-group">
						<div class="input-group">
							<label class="input-group-addon" for="inputRocal">연락처<strong class="required"></strong></label>
							<input name="Tel" type="number" class="form-control" id="inputTel" placeholder="답변 받을 연락처를 입력해 주세요. ">
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<label class="input-group-addon" for="inputBizName">첨부파일<strong class="required"></strong></label>
							<input name="Bizname" type="file" class="form-control" id="inputBizName" placeholder="파일을 첨부하세요.">
						</div>
					</div>

				</div>
			</div>

			<!-- 하단버튼 -->
			<div class="fixed-bottom">
				<div class="row no-gutters">
					<div class="col-12">
						<button type="button" class="btn_qna btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#inputModal">문의하기</button>
					</div>
				</div>
			</div>
			<!--// 하단버튼 -->
		</form>
	</div>
	<!--// 데이터 -->

	<!-- Modal 등록완료 -->
	<!-- <div class="modal fade" id="inputModal" tabindex="-1"
		aria-labelledby="inputModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-center" id="inputModalLabel">등록완료</h5>
				</div>
				<div class="modal-body text-center">
					<p>
						문의하신 내용이 정상적으로 등록되었습니다.<br />담당자가 빠른 시일내에 답변드리도록 하겠습니다.<br />답변내용은
						문의내역에서 확인이 가능합니다.
					</p>
				</div>
				<div class="modal-footer-btm">
					<div class="row">
						<div class="col-12">
							<a href="#none" class="btn btn-primary btn-lg btn-block"
								data-dismiss="modal">확인</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	<!--// Modal 등록완료 -->


	<!-- JS and JavaScript -->
	<script>
		const rootPath = "${rootPath}"
	</script>
	<script src="${rootPath}/static/js/jquery.min.js"></script>
	<script src="${rootPath}/static/js/bootstrap.min.js"></script>
	<script src="${rootPath}/static/js/jquery.touchSwipe.min.js"></script>
	<script src="${rootPath}/static/js/default.js"></script>
	<script src="${rootPath}/static/js/swiper.min.js"></script>
	<script src="${rootPath}/static/js/qna.js?ver=8"></script>

</body>
</html>