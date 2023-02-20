<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지- 공지사항 작성</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/admin/adminPage-noticeWrite.css">
</head>
<body>
	<div>
		<!-- 사이드 바 -->
		<div id="side-bar"></div>
		<!-- 사이드 바 끝-->
		<div class="wrap">
			<!-- 목록 -->
			<div class="container">
				<div class="info-title-box"></div>
				<section class="notice-info-box-layout">
					<div class="notice-info-box">
						<div class="notice-info-title-box">
							<span>공지사항 작성</span>
						</div>
						<form action="" class="notice-info-form">
							<div class="notice-info">
								<div>
									<div class="form-title">
										<span>제목</span>
									</div>
									<div class="form-input-box">
										<input type="text" class="title" placeholder="제목을 입력해주세요.">
									</div>
								</div>
								<div>
									<div class="form-title form-margin">
										<span>내용</span>
									</div>
									<div class="form-input-box">
										<textarea class="content" spellcheck="false"
											placeholder="내용을 입력해주세요."></textarea>
									</div>
								</div>
								<div class="form-button-box">
									<button>등록</button>
								</div>
							</div>
						</form>
					</div>
				</section>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="../assets/js/admin/menuLoad.js"></script>
</html>