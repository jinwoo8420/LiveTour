<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<div class="slideList">
	<ul class="listWrap">
		<c:forEach items="${TOURS}" var="TOUR">
			<li class="item"><a
				href="${rootPath}/detail/detail/${TOUR.contentid}">
					<div class="imgWrap">
						<span class="play-live"> <small class="sr-only">LIVE</small>
						</span> <img src="${TOUR.firstimage2}" class="img-fluid" alt=""
							onerror="this.src='${rootPath}/static/img/default-img.jpg'">
						<!-- 엑박처리 할것 -->
					</div>
					<div class="InfoWrap">
						<h6>${TOUR.title}</h6>
						<p>${TOUR.addr1}</p>
					</div>
			</a></li>

		</c:forEach>
	</ul>
</div>