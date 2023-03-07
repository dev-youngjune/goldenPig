<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 페이지- 배너 등록</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin/adminPage-bannerRegister.css">
</head>
<body>
	<div>
		<div class="info-title-box info-title-box-flex">
			<div class="logo-box-layout">
				<div class="logo-box">
					<img src="${pageContext.request.contextPath}/static/img/admin/logo_icon.png">
				</div>
				<div class="logo-title">
					<span>골든 피그</span>
				</div>
			</div>
			<div>
				<div class="select-name">
					<span>배너 관리</span>	
				</div>
			</div>
		</div>
		<div class="wrap"> 
		
			<!-- 사이드 바 -->
			<div id="side-bar">
				<jsp:include page="sidemenu.jsp" flush="false" />
			</div>
			<!-- 사이드 바 끝-->
		
			<div class="container">
				<div class="container-margin">
					<!-- 헤더 -->
					<div style="margin: 0 auto;width: 70%;">
						<div class="prev-button-layout">
							<div>
								<a href="javascript:location.href='${pageContext.request.contextPath}/adminBannerList.admin'">
									<img src="${pageContext.request.contextPath}/static/img/admin/prev_icon.png" class="prev-icon">
									<span class="prev-title">리스트로 돌아가기</span>
								</a>
							</div>
						</div>
						<!-- 내용 섹션 -->
						<div class="info-flex">
							<section class="board-info-box-layout" style="width: 100%;">
								<div class="board-info-box">
									<div class="board-info-title-box">
										<span>배너 등록</span>
									</div>
								</div>
								<div class="info-table">
									<div class="info-member">
											<span class="span-bold">번호 :</span> 
											<!-- 제목  -->
											<span><c:out value="${board.boardTitle}"/></span>
									</div>
									<div class="info-member">
										<span class="span-bold">배너명 :</span>
										<!-- 작성자 명  -->
										<span><c:out value="${board.memberName}"/></span>
									</div>
									<%-- <div class="info-member">
										<span class="span-bold">좋아요 :</span>
										<!-- 좋아요 갯수  -->
										<span><c:out value="${board.likeCount}"/></span>
									</div> --%>
									<div class="info-member">
										<span class="span-bold">등록 날짜 :</span>
										<!-- 작성 날짜  -->
										<span><c:out value="${board.boardRegisterDate}"/></span>
									</div>
								</div>
								<hr>
								<div class="board-info-box">
								<form action="${pageContext.request.contextPath}/adminBannerRegisterOk.admin" method="post" enctype="multipart/form-data">
									<div class="banner-img-box">
										<div class="info-margin-bottom">
											<span class="info-tag">배너 이미지 파일</span>
										</div>
										<label class="banner-img">
											<img src="${pageContext.request.contextPath}/static/img/admin/default_banner.png" class="banner">
											<!-- <input type="file" name="banner" style="display:none;"> -->
										</label>
									</div>
									<!-- <div class="member-info-box">
										<div class="button-box">
											<button type="submit" id="regist-button">등록</button>
										</div>
									</div> -->	
								</form>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/admin/thumbnail.js"></script>
<%-- <script src="${pageContext.request.contextPath}/static/js/admin/adminPage-bannerRegister-registButton.js"></script> --%>
</html>