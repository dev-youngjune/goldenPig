<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재설정</title>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon/fevicon.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/account/account_password.css">
</head>
<body>
	<div id="wrap">
		<main>
			<div>
				<div id="secession_board">
					
						<header>
							<img src="${pageContext.request.contextPath}/static/img/admin/logo_icon.png" class="logo-img"> 
							<img class="a_headerLogo" src="${pageContext.request.contextPath}/static/img/header/logo_title_icon.png">
						</header>
						<form action="${pageContext.request.contextPath}/passwordOk.member" class="password-change">
						<div id="withdrawal_select">
							<h1 style="position: relative">
								<span id="element">비밀번호 재설정</span>
							</h1>
							<div style="margin-bottom: 3rem; margin-top: 0.75rem">
								<span style="--tw-text-opacity: 1; color: rgba(156, 165, 179, var(--tw-text-opacity));">새로운 비밀번호를 입력해 주세요.</span>
							</div>
							<div style="display: block; padding-top: 0.5rem">
								<span style="font-size: 13px">비밀번호</span>
								<div id="input_email">
									<input class="email_text new-password" id="new_password" type="password" placeholder="새로운 비밀번호를 입력해 주세요." name="memberPassword">
									<div class="hide eye"></div>
									<p class="error-new-password error-message"></p>
								</div>
							</div>
							<div style="display: block; padding-top: 0.5rem">
								<span style="font-size: 13px">비밀번호 확인</span>
								<div id="input_email">
									<input class="email_text confirm-password" id="repeat_password"type="password" placeholder="비밀번호를 다시 한번 입력해 주세요.">
									<div class="hide eye"></div>
									<p class="error-confirm-password error-message"></p>
								</div>
							</div>
						</div>
						</form>	
						<footer>
							<button id="confirm"> 재설정 후 자동로그인 </button>
						</footer>
					
				</div>
			</div>
		</main>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>let contextPath = "${pageContext.request.contextPath}"</script>
<script src="${pageContext.request.contextPath}/static/js/account/account-password.js"></script>
</html>