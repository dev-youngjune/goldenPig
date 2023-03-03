<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아하(Aha) 인증센터</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/passwordReset.css">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon/fevicon.png">
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
										<img class="a_headerLogo" src="${pageContext.request.contextPath}/static/img/account/logo.png">
									</a>
								</header>
								<div class="theScreen_body px-5">
									<h1 class="textTitle">
										<span>비밀번호 재설정</span>
									</h1>
									<p class="theFindAccount_message">새로운 비밀번호를 입력해 주세요.</p>
									<div class="theLoginEamil_body">
										<div class="theLoginEmail_bodyInput">
											<div class="TextField">
												<label class="TextField_label">비밀번호</label>
												<div class="TextField_body">
													<input name="memberPassword" type="password" placeholder="비밀번호를 입력해주세요" class="TextField_bodyInput first" autocomplete value>
														<img class="eye1" src="${pageContext.request.contextPath}/static/img/member/passwordEyeSlash.png">
												</div>
                                                <p class="error-message-password" style="margin: 0;"></p>
											</div>
											<div class="TextField">	
												<label class="TextField_label">비밀번호 확인</label>
												<div class="TextField_body">
													<input name ="memberPasswordCheck" type="password" placeholder="비밀번호를 입력해주세요" class="TextField_bodyInput second" autocomplete value>
														<img class="eye2" src="${pageContext.request.contextPath}/static/img/member/passwordEyeSlash.png">
												</div>
                                                <p class="error-message-password-check" style="margin: 0;"></p>
											</div>
										</div>
									</div>
								</div>
								<footer class="theScreen_footer">
									<button type="submit" class="Button -large w-full -primary -filled">재설정 후 자동로그인</button>
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
<script src="../assets/js/member/passwordReset.js"></script>
</html>