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
<link rel="stylesheet" href="../assets/css/admin/adminPage-bannerRegister.css">
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
					<div style="margin: 0 auto;width: 70%;">
						<div class="prev-button-layout">
							<div>
								<a>
									<img src="../assets/img/admin/prev_icon.png" class="prev-icon">
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
									<div class="banner-img-box">
									<div class="banner-img"></div>
										<div class="banner-name-box">
											<span></span>
										</div>
									</div>
									<div class="member-info-box">
										<form action="">
											<div class="member-info-tag-box">
												<span class="info-tag">배너 명</span>
												<!-- 이름 -->
												<div class="info info-name">
													<input type="text" class="banner-name" name="bannerName">
												</div>
											</div>	
											<div class="member-info-tag-box">
												<span class="info-tag">이메일</span>
												<!-- 이메일 -->
												<div class="info">
													<input type="text" class="member-email" name="memberEmail">
												</div>
											</div>
											<div class="member-info-tag-box">
												<span class="info-tag">생년월일</span>
												<div class="info">
													<input type="text" class="member-birth" name="memberBirth">
												</div>
											</div>
											<div class="member-info-tag-box">
												<span class="info-tag">핸드폰 번호</span>
												<!-- 핸드폰 번호 -->
												<div class="info">
													<input type="text" class="member-phone" name="memberPhoneNumber">
												</div>
											</div>
											<div class="button-box">
												<button>변경</button>
											</div>
										</form>
									</div>	
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
<script src="../assets/js/admin/menuLoad.js"></script>
</html>