<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/main/bulma.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/banner/banner.css">
</head>
<body>
	<header class="headerCarousel">
		<div class="swiper-container">
		</div>
	</header>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	let contextPath = "${pageContext.request.contextPath}";
/* 	let page = `${page}` || null;*/
	let banners = `${banners}`;
</script>
<script src="${pageContext.request.contextPath}/static/js/banner/banner.js"></script>
<script src="${pageContext.request.contextPath}/static/js/banner/newBanner.js"></script>
</html>