<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 - 공지사항 목록</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/admin/adminPage-noticeList.css">
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
						<div class="board-title-box-flex">
							<div class="board-info-title-box">
								<span>공지사항 목록</span>
							</div>
							<div class="notice-write-button">
								<a> <img src="../assets/img/admin/write_icon.png" class="icon">
									<span>공지사항 작성</span>
								</a>
							</div>
						</div>
						<div class="info-table">
							<table>
								<thead>
									<tr>
										<th>No</th>
										<th>제목</th>
										<th>작성 날짜</th>
										<th>수정 날짜</th>
										<th>
											<!-- 버튼 넣을 칸 이라서 빈공간으로 -->
										</th>
									</tr>
								</thead>
								<tr>
									<td>1</td>
									<td><a>[공지] 서비스 시작</a></td>
									<td>2023.01.11</td>
									<td>2023.01.11</td>
									<td class="modify-button">
										<a href="<!-- 수정 페이지 -->">
											수정
										</a>
										<button id="notice-delete">삭제</button>
									</td>
								</tr>
								<tr>
									<td>2</td>
									<td><a>[공지] 서비스 시작</a></td>
									<td>2023.01.11</td>
									<td>2023.01.11</td>
									<td class="modify-button"><a href="<!-- 수정 페이지 -->">수정</a>
										<button id="notice-delete">삭제</button></td>
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