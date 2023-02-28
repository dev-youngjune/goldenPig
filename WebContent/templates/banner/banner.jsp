<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/bulma.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/banner/banner.css">
<!-- swiper 라이브러리 스타일시트 -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
</head>
<body>
	<header class="headerCarousel">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div id="slide-01" class="swiper-slide"><label style="min-height: 250px"><a><img alt="" src="#"></a></label></div>
				<div id="slide-02" class="swiper-slide"><label style="min-height: 250px"><a><img alt="" src="#"></a></label></div>
				<div id="slide-03" class="swiper-slide"><label style="min-height: 250px"><a><img alt="" src="#"></a></label></div>
				<div id="slide-04" class="swiper-slide"><label style="min-height: 250px"><a><img alt="" src="#"></a></label></div>
				<!--<div id="slide-05" class="swiper-slide"><label style="min-height: 250px"><a><img alt="" src="#"></a></label></div> -->
			</div>
			<div>
				<a type="button" class="is-page1"></a>
				<a type="button" class="is-page2"></a>
				<a type="button" class="is-page3"></a>
				<a type="button" class="is-page4"></a>
			</div>
			<div class="swiper-pagination">
				<span class="swiper-pagination-bullet"></span>
				<span class="swiper-pagination-bullet"></span>
				<span class="swiper-pagination-bullet"></span>
				<span class="swiper-pagination-bullet"></span>
			</div>
			<span class="swiper-notification"></span>
		</div>
	</header>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/banner/banner.js"></script>
</html>