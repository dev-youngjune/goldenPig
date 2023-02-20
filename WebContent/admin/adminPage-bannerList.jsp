<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지- 배너 리스트</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/admin/adminPage-bannerList.css">
</head>
<body>
	<div>
		<div class="wrap"> 
			<!-- 사이드 바 -->
			<div id="side-bar"></div>
			<!-- 사이드 바 끝-->
			<!-- 목록 박스 -->
			<div class="container">
				<div class="info-title-box"></div>
				<section class="banner-info-box-layout">
					<div class="banner-info-box">
						<div class="banner-info-title-box">
							<div>
								<span>배너 목록</span>
							</div>
							<div>
								<a href="">등록하기</a>
							</div>
						</div>
						<div class="info-table">
							<table>
								<thead>
									<tr>
										<th>번호</th>
										<th>코드</th>
										<th>배너명</th>
										<th>상태</th>
										<th>미리보기</th>
										<th>관리</th>
									</tr>
								</thead>
								<!-- 하나의 행 시작  -->
								<tr>
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
									<td class="modify-button">
										<div>
											<button id="banner-delete">삭제</button>
										</div>
									</td>
								</tr>
								<!-- 하나의 행 끝  -->
							</table>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="../assets/js/admin/menuLoad.js"></script>
</html>