<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지- 배너 목록</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../../static/css/admin/adminPage-bannerList.css">
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
			<div id="side-bar">
				<jsp:include page="sidemenu.jsp" flush="false" />
			</div>
			
			<!-- 모달 창 -->
			<div id="modal">
				<div class="modal-wrap">
					<div class="modal-content-box">
						<div class="title-box">
							<h3>배너 미리보기</h3>
							<h3 class="exit-button">X</h3>
						</div>
						<div class="modal-preview-layout">
							<div class="modal-flex">
								<div>
									<div class="banner-preview-box">
										<!-- 이미지 뿌려주는 곳 -->
										<div class="banner-preview">
											<div class="preview-image-box">
												<!-- 배너 이미지 추가하면 img 태그 추가해서 넣기  -->
												<img src="${pageContext.request.contextPath}/static/img/admin/001.png" class="review-image review-active">
												<img src="${pageContext.request.contextPath}/static/img/admin/002.png" class="review-image review-active">
												<img src="${pageContext.request.contextPath}/static/img/admin/005.png" class="review-image review-active">
											</div>
										</div>						
									</div>
								</div>
								<div class="modal-number-button-box">
									<div class="modal-number-button">
										<!-- <div class="number-box number-box-active">1</div>
										<div class="number-box">2</div>
										<div class="number-box">3</div>
										<div class="number-box">4</div> -->
									</div>
								</div>		
								<img src="${pageContext.request.contextPath}/static/img/admin/left_icon.png" class="preview-left">
								<img src="${pageContext.request.contextPath}/static/img/admin/right_icon.png" class="preview-right">
							</div>
							<div class="banner-name">
										<!-- 배너 이름  -->
										<span>기본 배너</span>
									</div>	
							</div>	
						</div>
					</div>
				</div><!-- 모달창 끝  -->
			
			<div class="container">
				<div class="container-margin">
					<!-- 헤더 -->
					<div class="update-button-flex">
						<div class="delete-box-layout ">
								<div class="delete-box">
									<button id="review-button" class="register-button">미리보기</button>
								</div>
						</div>
						<div class="delete-box-layout ">
								<div class="delete-box">
									<button class="register-button">배너 등록</button>
								</div>
						</div>
						<div class="delete-box-layout">
								<div class="delete-box">
									<button class="delete-button">선택 게시물 삭제</button>
								</div>
						</div>
					</div>
					
					<!-- 내용 섹션 -->
					<section class="board-info-box-layout">
						
						<div class="board-info-box">
							<div class="board-info-title-box">
								<span>배너 목록</span>
							</div>
							
							<div class="info-table">
								<table>
									<thead>
										<tr>
											<th class="checkbox-line">
												<input type="checkbox" id="allSelect">
											</th>
											<th>번호</th>
											<th>배너명</th>
											<th>상태</th>
											<th>등록날짜</th>
											<th>관리</th>
										</tr>
									</thead>
									<!-- 하나의 행 시작  -->
									<tr class="load-data">
										<td class="checkbox-line">
											<input type="checkbox" name="check">
										</td>
										<!-- 배너 번호 -->
										<td>1</td>
										<!-- 이미지 이름 -->
										<td>기본 배너</td>
										<!-- 이미지 상태 ex) 사용 중 미사용 -->
										<td class="use">사용 중지</td>
										<td>2022.01.05</td>
										<td class="toggle transparent">
											<input id="toggle" class="toggle-button" type="checkbox">
											<label class="toggle-item" for="toggle">
												<span class="toggle-content"></span>
											</label>
										</td>
									</tr>
									<!-- 하나의 행 끝  -->
									<!-- 하나의 행 시작  -->
									<tr class="load-data">
										<td class="checkbox-line">
											<input type="checkbox" name="check">
										</td>
										<!-- 배너 번호 -->
										<td>1</td>
										<!-- 이미지 이름 -->
										<td>기본 배너</td>
										<!-- 이미지 상태 ex) 사용 중 미사용 -->
										<td class="use">사용 중지</td>
										<td>2022.01.05</td>
										<td class="toggle transparent">
											<input class="toggle-button" type="checkbox">
											<label class="toggle-item" for="toggle">
												<span class="toggle-content"></span>
											</label>
										</td>
									</tr>
									<!-- 하나의 행 끝  -->
									<!-- 하나의 행 시작  -->
									<tr class="load-data">
										<td class="checkbox-line">
											<input type="checkbox" name="check">
										</td>
										<!-- 배너 번호 -->
										<td>1</td>
										<!-- 이미지 이름 -->
										<td>기본 배너</td>
										<!-- 이미지 상태 ex) 사용 중 미사용 -->
										<td class="use">사용 중지</td>
										<td>2022.01.05</td>
										<td class="toggle transparent">
											<input class="toggle-button" type="checkbox">
											<label class="toggle-item" for="toggle">
												<span class="toggle-content"></span>
											</label>
										</td>
									</tr>
									<!-- 하나의 행 끝  -->
								</table>
							</div>
						</div>
					</section>
					
					<!-- 페이지 버튼 -->
					<div class="page-button-box-layout">
						<div class="page-button-box">
							<!-- 페이지 번호 -->
							<div class="">
								<div class="page-button-margin">
									<div>
										<img src="${pageContext.request.contextPath}/static/img/admin/left_icon.png" class="left-button">
									</div>
								</div>
							</div>
							<div class="page-button-active page-button">
								<div class="page-button-margin">
									<div>
										<span>1</span>
									</div>
								</div>
							</div>
							<div class="page-button">
								<div class="page-button-margin">
									<div>
										<span>2</span>
									</div>
								</div>
							</div>
							<div class="page-button">
								<div class="page-button-margin">
									<div>
										<span>3</span>
									</div>
								</div>
							</div>
							<div class="">
								<div class="page-button-margin">
									<div>
										<img src="${pageContext.request.contextPath}/static/img/admin/right_icon.png" class="right-button">
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 페이지 버튼 끝 -->
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="../../static/js/admin/checkbox.js"></script>
<script src="../../static/js/admin/page.js"></script>
<script src="../../static/js/admin/slide.js"></script>
<script src="../../static/js/admin/toggle.js"></script>
</html>