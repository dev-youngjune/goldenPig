<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
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
									<form class="loginEmail_form w-full" action="${pageContext.request.contextPath}/loginOk.member" method="get">
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
									</form>
									<footer class="theScreen_footer">
										<button class="Button -large w-full -primary -filled login-button">로그인</button>
										<div class="find-button-box">
											<button class="find-button" onclick="location.href='${pageContext.request.contextPath}/findEmail.member'">이메일 계정 찾기</button>
											<div class="">|</div>
											<button class="find-button" onclick="location.href='${pageContext.request.contextPath}/findPassword.member'">비밀번호 재설정</button>
										</div>
									</footer>
								</div>
							</div>
					</div>
				</main>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>let contextPath = "${pageContext.request.contextPath}"</script>
<script src="${pageContext.request.contextPath}/static/js/member/login.js"></script>
<script>
const $loginButton = $(".login-button");
const urlParams = new URL(location.href).searchParams;
const login = urlParams.get('login');

if(login == false){
	login = true;
}

$(function() {
	if(login){
		alert("이메일 또는 비밀번호를 확인해주세요.");
	}
});

$loginButton.click(function(){
	$(".loginEmail_form").submit();
});

let phoneCheck = "<c:out value='${phoneNumberCheck}'/>";
if(phoneCheck){
	alert("없는 회원정보입니다.");
}
</script>
</html>