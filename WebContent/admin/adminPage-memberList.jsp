<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지-유저 목록</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/admin/adminPage-userList.css">
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
				<section class="member-info-box-layout">
					<div class="member-info-box">
						<div class="member-info-title-box">
							<span>회원정보 목록</span>
						</div>
						<div class="info-table">
							<table>
								<thead>
									<tr>
										<th>No</th>
										<th>이메일</th>
										<th>닉네임</th>
										<th>핸드폰 번호</th>
										<th>가입 날짜</th>
										<th></th>
									</tr>
								</thead>
								<tr>
									<td>1</td>
									<td><a href="<!-- 상세보기 페이지 -->">ljw120@naver.com</a></td>
									<td>멍충코딩</td>
									<td>010-1234-1234</td>
									<td>2023.01.11</td>
									<td class="modify-button"><a href="<!-- 수정 페이지 -->">수정</a>
									</td>
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