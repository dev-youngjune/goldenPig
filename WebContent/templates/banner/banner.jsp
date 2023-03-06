<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/main/bulma.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/banner/banner.css">
<!-- swiper 라이브러리 스타일시트 -->
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
</head>
<body>
	<header class="headerCarousel">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<%-- 				<div id="slide-0${i}" class="swiper-slide"><label style="min-height: 250px"><a><img alt="" src="${banner.img}"></a></label></div>
			<c:forEach items="${banners}" var="i">
			</c:forEach> --%>
<%-- 				<div id="slide-01" class="swiper-slide">
					<div>
						<label style="min-height: 250px">
							<a>
								<img alt="" src="${pageContext.request.contextPath}/static/img/banner/banner_01.png">
							</a>
						</label>
					</div>
				</div>
				<div id="slide-02" class="swiper-slide">
					<div>
						<label style="min-height: 250px">
							<a>
								<img src="${pageContext.request.contextPath}/static/img/banner/banner_02.png">
							</a>
						</label>
					</div>
				</div>
				<div id="slide-03" class="swiper-slide">
					<div>
						<label style="min-height: 250px">
							<a>
								<img alt="" src="${pageContext.request.contextPath}/static/img/banner/banner_03.png">
							</a>
						</label>
					</div>
				</div>
				<div id="slide-04" class="swiper-slide">
					<div>
						<label style="min-height: 250px">
							<a>
								<img src="${pageContext.request.contextPath}/static/img/banner/banner_04.png">
							</a>
						</label>
					</div>
				</div> --%>
				<!--<div id="slide-05" class="swiper-slide"><label style="min-height: 250px"><a><img alt="" src="#"></a></label></div> -->
			</div>
			<div class="bannerButtonWrapper">
				<%-- 			<c:forEach items="${banners}" var="i">
				<a type="button" class="is-page${i}"></a>
			</c:forEach>--%>
<!-- 				<a type="button" class="is-page1"></a>
				<a type="button" class="is-page2"></a>
				<a type="button" class="is-page3"></a>
				<a type="button" class="is-page4"></a> -->
			</div>
			<div class="swiper-pagination">
				<%-- 			<c:forEach items="${banners}" var="banner">
				<span class="swiper-pagination-bullet"></span>
			</c:forEach> --%>
<!-- 				<label class="swiper-pagination-bullet" style="cursor: pointer"><a></a></label>
				<label class="swiper-pagination-bullet" style="cursor: pointer"><a></a></label>
				<label class="swiper-pagination-bullet" style="cursor: pointer"><a></a></label>
				<label class="swiper-pagination-bullet" style="cursor: pointer"><a></a></label>
				-->			
			</div>
			<span class="swiper-notification"></span>
		</div>
	</header>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script type="text/javascript">
	let contextPath = "${pageContext.request.contextPath}";
	let banners = `${banners}`;
</script>
<script src="${pageContext.request.contextPath}/static/js/banner/newBanner.js"></script>
<script src="${pageContext.request.contextPath}/static/js/banner/banner.js"></script>
</html>