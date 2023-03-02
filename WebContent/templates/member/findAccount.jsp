<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>골든피그-이메일 찾기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/findAccount.css">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon/fevicon.png">
</head>
<body>
<body class="find_body">
	<div id="wrap">
		<div id="layout">
			<div class="layoutDefault">
				<main class="layoutDefault_view">
					<div class="loginEmail">
						<div class="theScreen">
							<header class="theScreen_header">
								<button type="button" class="theScreen_headerButton -left">
									<img>
								</button>
								<a href="" class="theScreen_headerLogo">
									<img src="${pageContext.request.contextPath}/static/img/admin/logo_icon.png" class="logo-img"> 
									<img class="a_headerLogo" src="${pageContext.request.contextPath}/static/img/header/logo_title_icon.png">
								</a>
							</header>
							<!-- body -->
							<div class="theScreen_body px-5">
								<h1>
									<span class="theScreen_body_h_span">회원님의 계정을 찾았어요</span>
								</h1>
								<div class="email_Box_Title mt-4">이메일 주소</div>
								<div class="email_Box_div mt-2">
									<div class="email_Box_div_div">
										<div class="mail-image-box">
											<img src="${pageContext.request.contextPath}/static/img/member/mail_icon.png">
										</div>
										<div class="email-result-box">
											<span><c:out value='${memberEmail}' /></span>
										</div>
									</div>
								</div>
							</div>
							
							<!-- footer -->
							<footer class="theScreen_footer">
								<div class="email-login-button">
									<div class="mail-img-box-layout">
										<a class="mail-img-box" href="JavaScript:location.href='${pageContext.request.contextPath}/login.member'">
											<img src="${pageContext.request.contextPath}/static/img/member/mail_icon.png" class="mail-img">
											이메일 로그인
										</a>
									</div>
								</div>	
							</footer>
						</div>
					</div>
				</main>
			</div>
		</div>
	</div>				
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>let contextPath = "${pageContext.request.contextPath}"</script>
</html>