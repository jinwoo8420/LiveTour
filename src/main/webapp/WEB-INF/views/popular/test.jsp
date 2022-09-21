<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Insert title here</title>
</head>
<body>

	<div class="seoul">

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${TOURS}" var="TOUR">
									<div class="attr-container">
										<a href="${rootPath}/detail/tour_detail/${TOUR.contentid}" style="color: black">
											<span class="img">
												<img src="${TOUR.firstimage2}"
													onerror="this.src='${rootPath}/static/images/image-error.png'">
											</span>
											<span>
												[명소]&nbsp; <b>${TOUR.title}</b>
											</span>
											<span class="content">
												<span>${TOUR.addr1}</span>
												<span>${TOUR.tel}</span>
											</span>
										</a>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="btn-box">
				<button class="btn prev">&#10094;</button>
				<button class="btn next">&#10095;</button>
			</div>


		</div>




	</div>

</body>
</html>