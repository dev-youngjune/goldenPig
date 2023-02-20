<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지-저축게시판 목록</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/admin/adminPage-boardList.css">
</head>
<body>
	<div>
		<div class="wrap"> 
			<!-- 사이드 바 -->
			<div id="side-bar"></div>
			<!-- 사이드 바 끝-->
			<!-- 목록 -->
			<div class="container">
				<div class="info-title-box"></div>
				<section class="board-info-box-layout">
					<div class="board-info-box">
						<div class="board-info-title-box">
							<span> 저축 게시판 목록</span>
						</div>
						<div class="info-table">
							<table>
								<thead>
									<tr>
										<th>No</th>
										<th>카테고리</th>
										<th><a href="<!-- 상세보기 페이지 -->">게시판 제목</a></th>
										<th>작성자 명</th>
										<th>작성 날짜</th>
									</tr>
								</thead>
								<tr>
									<td>1</td>
									<td>저축 게시판</td>
									<td><a href="<!-- 상세보기 페이지 -->">적금의 신의 팁을 알려드립니다.</a></td>
									<td>임**</td>
									<td>2023.01.11</td>
								</tr>
								<tr>
									<td>2</td>	
									<td>저축 게시판</td>
									<td><a href="<!-- 상세보기 페이지 -->">드디어 돈 다모앗어요!!</a></td>
									<td>이**</td>
									<td>2023.02.11</td>
								</tr>
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