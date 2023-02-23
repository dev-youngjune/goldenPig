<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아하(Aha) 인증센터</title>
<link rel="stylesheet" href="../assets/css/member/login.css">
</head>
<body>
	<div id="wrap">
		<div id="layout">
			<div class="layoutDefault">
				<main class="layoutDefault_view">
					<div class="loginEmail">
						<form class="loginEmail_form w-full">
							<div class="theScreen">
								<header class="theScreen_header">
									<button type="button" class="theScreen_headerButton -left">
										<img src="">
									</button>
									<a class="theScreen_headerLoga">
										<img class="a_headerLogo" src="../assets/img/account/logo.png">
									</a>
								</header>
								<div class="theScreen_body px-5">
									<h1 class="textTitle">
										<span>이메일 로그인</span>
									</h1>
									<div class="theLoginEamil_body">
										<div class="theLoginEmail_bodyInput">
											<div class="TextField">
												<label class="TextField_label">이메일</label>
												<div class="TextField_body">
													<input type="text" placeholder="이메일을 입력해주세요" class="TextField_bodyInput" autocomplete value>
												</div>
											</div>
											<div class="TextField">	
												<label class="TextField_label">비밀번호</label>
												<div class="TextField_body">
													<input type="password" placeholder="비밀번호를 입력해주세요" class="TextField_bodyInput" autocomplete value>
													<!-- <button type="button" tabindex="-1" class="TextField_bodyButton -off"> -->
														<img class="eye" src="../assets/img/member/passwordEye.png">
													<!-- </button> -->
												</div>
											</div>
										</div>
									</div>
								</div>
								<footer class="theScreen_footer">
									<button type="submit" class="Button -large w-full -primary -filled">로그인</button>
									<a href="">
										<button class="Button mt-2 -large w-full -transparent">비밀번호를 재설정 하시겠어요?</button>
									</a>
								</footer>
							</div>
						</form>
					</div>
				</main>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="../assets/js/member/login.js"></script>
</html>