<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>골든피그-로그인</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/login.css">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon/fevicon.png">
</head>
<body>
	<div id="wrap">
		<div id="layout">
			<div class="layoutDefault">
				<main class="layoutDefault_view">
					<div class="loginEmail">
						<form class="loginEmail_form w-full" action="${pageContext.request.contextPath}/loginOk.member" method="get">
							<div class="theScreen">
								<header class="theScreen_header">
									<button type="button" class="theScreen_headerButton -left">
										<img src="">
									</button>
									<a class="theScreen_headerLoga">
										<img src="${pageContext.request.contextPath}/static/img/admin/logo_icon.png" class="logo-img"> 
										<img class="a_headerLogo" src="${pageContext.request.contextPath}/static/img/header/logo_title_icon.png">
									</a>
								</header>
								<div class="theScreen_body px-5">
									<h1 class="textTitle">
										<span>이메일 로그인</span>
									</h1>
									<div class="theLoginEamil_body">
										<div class="theLoginEmail_bodyInput">
											<div class="TextField">
												<div class="TextField_body">
												<label class="TextField_label">이메일</label>
													<input name="memberEmail" type="text" placeholder="이메일을 입력해주세요" class="TextField_bodyInput">
												</div>
												<p class="error-message-email"></p>
											</div>
											
											<div class="TextField">	
												<div class="TextField_body">
													<label class="TextField_label">비밀번호</label>
													<input name="memberPassword" type="password" placeholder="비밀번호를 입력해주세요" class="TextField_bodyInput first">
													<img class="eye close-eye" src="${pageContext.request.contextPath}/static/img/member/passwordEyeSlash.png">
												</div>
												<p class="error-message-password"></p>	
											</div>
										</div>
									</div>
									<footer class="theScreen_footer">
										<button type="submit" class="Button -large w-full -primary -filled">로그인</button>
										<div class="find-button-box">
											<button class="find-button">이메일 계정 찾기</button>
											<div class="">|</div>
											<button class="find-button">비밀번호 재설정</button>
										</div>
									</footer>
								</div>
							</div>
						</form>
					</div>
				</main>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>let contextPath = "${pageContext.request.contextPath}"</script>
<script src="${pageContext.request.contextPath}/static/js/member/login.js"></script>
</html>