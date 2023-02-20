<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지- 배너 목록</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/admin/adminPage-bannerList.css">
</head>
<body>
	<div>
		<div class="info-title-box info-title-box-flex">
			<div class="logo-box-layout">
				<div class="logo-box">
					<img src="../assets/img/admin/logo_icon.png">
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
			<div id="side-bar"></div>
			<!-- 사이드 바 끝-->
		
			<div class="container">
				<div class="container-margin">
					<!-- 헤더 -->
					<div class="update-button-flex">
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
											<th>
												<input type="checkbox" id="allSelect">
											</th>
											<th>번호</th>
											<th>코드</th>
											<th>배너명</th>
											<th>상태</th>
											<th class="img-th">미리보기</th>
										</tr>
									</thead>
									<!-- 하나의 행 시작  -->
									<tr>
										<td>
											<input type="checkbox" name="check">
										</td>
										<!-- 배너 번호 -->
										<td>1</td>
										<!-- 배너 이미지 코드 -->
										<td>{코드}</td>
										<!-- 이미지 이름 -->
										<td>기본 배너</td>
										<!-- 이미지 상태 ex) 사용 중 미사용 -->
										<td>사용 중</td>
										<td>
											<div class="banner-img-box">
												<div class="banner-img"></div>
											</div>
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
							<div class="page-button-active page-button button-check">
								<div class="page-button-margin">
									<div>
										<span>1</span>
									</div>
								</div>
							</div>
							<div class="page-button button-check">
								<div class="page-button-margin">
									<div>
										<span>2</span>
									</div>
								</div>
							</div>
							<div class="page-button button-check">
								<div class="page-button-margin">
									<div>
										<span>3</span>
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
<script src="../assets/js/admin/menuLoad.js"></script>
<script src="../assets/js/admin/checkbox.js"></script>
</html>