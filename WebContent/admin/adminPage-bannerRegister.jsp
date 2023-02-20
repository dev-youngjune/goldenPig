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
<link rel="stylesheet" href="../assets/css/admin/sidemenu.css">
<link rel="stylesheet" href="../assets/css/admin/adminPage-bannerRegister.css">
<style>
	.attach-box {
		width: 25px; 
		height: 25px;
		background-color : #ca3e47;
		border-radius : 50%;
		position: absolute;
		bottom: 0px;
    	left: 47%;
    	cursor: pointer;
	}

	label {
		cursor: pointer;
	}

	.img-attach {
		margin: 0 auto;
    	margin-top: 2px;
		width: 20px; 
		height: 20px;
		background-image: url('../assets/img/admin/camera_icon.png');
		background-size: contain;
		filter: invert(100%) sepia(0%) saturate(7477%) hue-rotate(131deg) brightness(106%) contrast(106%);
	}
</style>
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
								<li class="select-menu">
									<a> 
										<span>전체 게시판</span>
									</a>
								</li>
								<li class="select-menu">
									<a> 
										<span>자유 게시판</span>
									</a>
								</li>
								<li class="select-menu">
									<a>
										<span>저축 게시판</span>
									</a>
								</li>
							</ul>
						</li>

						<li class="menu">
							<div>
								<img src="../assets/img/admin/notice_icon.png" class="icon">
							</div> 
							<a> 
								<span>공지사항 관리</span>
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
							</div> 
							<a> 
								<span>회원정보 관리</span>
							</a>
						</li>

						<li class="menu">
							<div>
								<img src="../assets/img/admin/banner_icon.png" class="icon">
							</div> 
							<a> 
								<span>배너 관리</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- 사이드 바 끝-->
			<!-- 목록 -->
			<div class="container">
				<div class="info-title-box"></div>
				<div class="info-flex">
					<section class="banner-info-box-layout">
						<div class="banner-info-box">
							<div class="notice-title-box-layout">
								<div class="banner-info">
									<div>
										<a href=""><!-- 이전 경로로 이동 (회원 상세보기 페이지) -->
											<img src="../assets/img/admin/prev_icon.png" class="prev">
										</a>
									</div>
									<div class="banner-img-box">
										<!-- 배너 이미지-->
											<div class="banner-img">
												<div class="attach-box">
													<label for="banner-file">
														<div class="img-attach"></div>
													</label>
													<input id="banner-file" type="file" style="display: none;">
												</div>
											</div>
										<!-- 이미지 이름 출력 -->
										<span class="banner-nickname">default_banner.png</span>
									</div>
									<div class="info-margin">
										<h2>배너 정보</h2>
									</div>
									<div class="info-margin">
										<span class="info-tag">배너명</span>
										<div class="banner-input-box">
											<!-- 배너 명 -->
											<input type="text" class="banner-input" name="bannerName">
										</div>
									</div>
									<form action="" class="banner-modify-form">
										<div class="info-margin">
											<span class="info-tag">이미지 파일</span>
											<!-- 이미지 파일 첨부 -->
										</div>
										<div class="info-margin">
											<span class="info-tag">이메일</span>
											<!-- 유저 이메일 -->
											<div class="banner-input-box">
												<!-- 기존 유저 데이터 가져와서 데이터(이메일) 넣기 -->
												<input type="text" class="banner-input" name="bannerEmail">
											</div>
										</div>
										<div class="form-last-flex">
											<div class="info-margin">
												<span class="info-tag">핸드폰 번호</span>
												<!-- 유저 핸드폰 번호-->
												<div class="banner-input-box">
												<!-- 기존 유저 데이터 가져와서 데이터(핸드폰 번호) 넣기 -->
													<input type="text" class="banner-input" name="bannerPhoneNumber">
												</div>
											</div>
											<div class="form-button-box">
												<button>정보 변경</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="../assets/js/admin/menu.js"></script>
<script>
	const $file = $("input[type=file]");
	const $bannerImg = $(".banner-img");
	
	$file.change(function(e){
		let file = e.target.files[0];
		let reader = new FileReader();
		$(".banner-nickname").text(file.name);

		reader.onload = function(e){
			let result = e.target.result;
			$bannerImg.css("background-image", `url('${result}')`);
		}
		
		reader.readAsDataURL(file);
	});
</script>
</html>