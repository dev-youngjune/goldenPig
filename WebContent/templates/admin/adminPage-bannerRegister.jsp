<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
								<a href="">
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
								<hr>
								<div class="board-info-box">
								<form action="">
									<div class="banner-img-box">
										<div class="info-margin-bottom">
											<span class="info-tag">배너 이미지 파일</span>
										</div>
										<label class="banner-img">
											<img src="${pageContext.request.contextPath}/static/img/admin/default_banner.png" class="banner">
											<input type="file" style="display:none;">
										</label>
									</div>
									<div class="member-info-box">
										<div class="member-info-tag-box">
											<span class="info-tag">배너 명</span>
											<!-- 이름 -->
											<div class="info info-name">
												<input type="text" class="banner-name" name="bannerName" placeholder="배너명을 입력해주세요.">
											</div>
										</div>	
										<div class="button-box">
											<button id="regist-button">등록</button>
										</div>
									</div>	
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
<script src="${pageContext.request.contextPath}/static/js/admin/adminPage-bannerRegister-registButton.js"></script>
</html>