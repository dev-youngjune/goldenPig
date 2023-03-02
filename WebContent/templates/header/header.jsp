<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="EUC-KR">
<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/bulma.css"> -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/header/header.css">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
	<%-- <jsp:include page="../header/sidebar.jsp" flush="false" /> --%>
	<!-- upper navigation -->
	<nav class="navigation">
		<div class="nav-wrapper">
			<div class="nav-container">
				<div class="nav-left">
					<a class="nav-brand nav-brandLogo" href="${pageContext.request.contextPath}/index.main">
						<img alt="" src="${pageContext.request.contextPath}/static/img/admin/logo_icon.png" style="width: 56px;">
					</a>
					<a class="nav-brand nav-brandText" href="${pageContext.request.contextPath}/index.main">
						<img alt="" src="${pageContext.request.contextPath}/static/img/header/logo_text.png" style="width: 135px;">
					</a>
				</div>
				<div class="nav-right"><!--  style="justify-content: flex-end;" -->
							<div class="nav-right-item nav-search">
								<form action="${pageContext.request.contextPath}/boardList.board" class="form-search is-relative">
									<input placeholder="궁금한 것을 검색해보세요." name="researchKeywords">
									<button type="submit" class="" style="cursor: pointer; left: 50%; position: absolute;">
										<img style="height: 36px; cursor: pointer;" alt="" src="${pageContext.request.contextPath}/static/img/header/search_icon.png">
									</button>
								</form>
							</div>
					<c:choose>
						<c:when test="${empty sessionScope.userId}"><!-- login -->
							<div class="nav-right-item nav-register is-inline-block">
								<a href="${pageContext.request.contextPath}/login.member" class="nav-right-button">로그인</a>
								<a href="${pageContext.request.contextPath}/join.member" class="nav-right-button">회원가입</a>
							</div>
						</c:when>
						<c:otherwise>
							<div class="nav-right-item profile-wrapper">
								<!-- is-hidden -->
								<div class="nav-notification">
									<a href="#"> 
										<img class="show-img" src="${pageContext.request.contextPath}/static/img/header/bell.png" alt="">
									</a>
								</div>
								<div class="nav-profile">
									<a href="${pageContext.request.contextPath}/profile.mypage">
										<!-- <img class="show-img" src="${pageContext.request.contextPath}/static/img/member/user_icon.png" alt=""> -->
										<img class="show-img" src="${user.profileImg}" alt="">
									</a>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</nav>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/header/header.js"></script>
</html>