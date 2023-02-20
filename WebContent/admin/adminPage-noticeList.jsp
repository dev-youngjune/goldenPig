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
<link rel="stylesheet" href="../assets/css/admin/sidemenu.css">
<link rel="stylesheet" href="../assets/css/admin/adminPage-noticeList.css">
</head>
<body>
	<div>
		<div class="wrap">
			<!-- 사이드 바 -->
			<div class="side-menu">
				<div>
					<div class="menu-title-layout">
						<div class="menu-title">
							<div>Menu</div>
							<div>
								<a href="<!-- 메인 페이지 경로 -->"> <img src="../assets/img/admin/home__icon.png" class="icon">
								</a>
							</div>
						</div>
					</div>
					<ul class="menu-bar">
						<li class="menu">
							<div>
								<img src="../assets/img/admin/board_icon.png" class="icon">
							</div> <a href=""> <span>게시판 관리</span>
						</a>
							<div class="board-button">
								<img src="../assets/img/admin/triangle_icon.png" class="icon board-icon triangle">
							</div>

						</li>

						<li class="menus">
							<ul class="menus1" style="display: none;">
								<li class="select-menu"><a> <span>전체 게시판</span>
								</a></li>
								<li class="select-menu"><a> <span>자유 게시판</span>
								</a></li>
								<li class="select-menu"><a> <span>저축 게시판</span>
								</a></li>
							</ul>
						</li>

						<li class="menu">
							<div>
								<img src="../assets/img/admin/notice_icon.png" class="icon">
							</div> <a> <span>공지사항 관리</span>
						</a>
							<div class="notice-button">
								<img src="../assets/img/admin/triangle_icon.png" class="icon notice-icon triangle">
							</div>
						</li>

						<li class="menus">
							<ul class="menus2" style="display:none;">
								<li class="select-menu">
									<a>
										<span>공지사항 목록</span>
									</a>
								</li>
								<li class="select-menu">
									<a>
										<span>공지사항 작성</span>
									</a>
								</li>
							</ul>
						</li>

						<li class="menu">
							<div>
								<img src="../assets/img/admin/user_icon.png" class="icon">
							</div> <a> <span>회원정보 관리</span>
						</a>
						</li>

						<li class="menu">
							<div>
								<img src="../assets/img/admin/banner_icon.png" class="icon">
							</div> <a> <span>배너 관리</span>
						</a>
						</li>
					</ul>
				</div>
			</div>
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
<script src="../assets/js/admin/menu.js"></script>
</html>