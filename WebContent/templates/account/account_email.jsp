<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 변경하기</title>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon/fevicon.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/account/account_email.css">
</head>
<body>
	<div id="wrap">
		<main>
			<div class="wrap-sub">
				<div id="secession_board">
					<header>
						<img src="${pageContext.request.contextPath}/static/img/admin/logo_icon.png" class="logo-img"> 
						<img class="a_headerLogo" src="${pageContext.request.contextPath}/static/img/header/logo_title_icon.png">
					</header>
					<form action="${pageContext.request.contextPath}/modifyEmailOk.member">
						<div id="withdrawal_select">
								<h1 style="position: relative">
									<span id="element">이메일 변경하기</span>
								</h1>
								<div style="margin-bottom: 3rem; margin-top: 0.75rem">
									<span style="font-weight: 400;--tw-text-opacity: 1; color: rgba(156, 165, 179, var(--tw-text-opacity));">자주 사용하는 이메일을 입력해 주세요!</span>
								</div>
							<div style="display: block; padding-top: 2.5rem;">
								<span style="font-size: 12px">이메일</span>
								<div id="input_email">
									<input id="email_text" type="text" placeholder="이메일을 입력해 주세요." name="memberEmail">
									<p class="error-message-email" style="margin: 0;"></p>
								</div>
							</div>
						</div>
						<footer>
							<button id="confirm"> 확인 </button>
						</footer>
					</form>
				</div>
			</div>
		</main>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>let contextPath = "${pageContext.request.contextPath}"</script>
<script src="${pageContext.request.contextPath}/static/js/account/account-email.js"></script>
</html>