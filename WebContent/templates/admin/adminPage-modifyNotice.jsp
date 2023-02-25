<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지- 공지사항 수정</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../../assets/css/admin/adminPage-noticeWrite.css">
</head>
<body>
	<div>
		<div class="info-title-box info-title-box-flex">
			<div class="logo-box-layout">
				<div class="logo-box">
					<img src="../../assets/img/admin/logo_icon.png">
				</div>
				<div class="logo-title">
					<span>골든 피그</span>
				</div>
			</div>
			<div>
				<div class="select-name">
					<span>공지사항 수정</span>	
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
					<div class="prev-button-layout">
						<div>
							<a>
								<img src="../../assets/img/admin/prev_icon.png" class="prev-icon">
								<span class="prev-title">리스트로 돌아가기</span>
							</a>
						</div>
					</div>
					
					<!-- 내용 섹션 -->
					<section class="board-info-box-layout">
						
						<div class="board-info-box">
							<div class="board-info-title-box">
								<span>공지사항 수정하기</span>
							</div>
							<hr>
							<div class="info-table">
							<form action="">
								<div>
									<input type="text" class="notice-title" name="noticeTitle" placeholder="제목을 입력해주세요." autocomplete="off">
								</div>
								<hr>
								<div>
									<textarea class="notice-content" name="noticeContent" placeholder="내용을 입력해주세요."></textarea>
								</div>
								<hr>
								<div>
									<button>등록</button>
								</div>
							</form>	
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="../../assets/js/admin/notice-write.js"></script>
</html>