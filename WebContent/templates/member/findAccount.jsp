<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아하(Aha) 인증센터</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/findAccount.css">
<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/findEmail.css"> -->
</head>
<body>
	<div class="loginEmail">
		<div class="theScreen">
			<jsp:include page="../member/findHeader.jsp" flush="false" />
			<!-- body -->
			<div class="theScreen_body px-5">
				<h1>
					<span class="theScreen_body_h_span">회원님의 계정을 찾았어요</span>
				</h1>
				<div class="email_Box_Title mt-4">이메일 주소</div>
				<div class="email_Box_div mt-2">
					<div class="email_Box_div_div">
						"codemater5252@gmail.com"
					</div>
				</div>
			</div>
			
			<!-- footer -->
			<footer class="theScreen_footer">
				<div class="theScreen_footer_div">
					<a class="theScreen_footer_div_a w-full">
						<svg xmlns="http://www.w3.org/2000/svg" class="email icon sprite-icons"><use href="/_nuxt/323e8e868a47805d86574cb70f2da2c4.svg#i-logo-mail" xlink:href="/_nuxt/323e8e868a47805d86574cb70f2da2c4.svg#i-logo-mail"></use></svg>
						이메일 로그인
					</a>
				</div>	
			</footer>
		</div>
	</div>
</body>
</html>