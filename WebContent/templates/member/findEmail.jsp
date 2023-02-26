<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아하(Aha) 인증센터</title>
<link rel="stylesheet" href="../../assets/css/member/findEmail.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
	<div class="theFindAccount">
		<div class="theScreen">
			<jsp:include page="../member/findHeader.jsp" flush="false" />
			<div class="theScreen_body px-5">
				<h1 class="textTitle">
				<!-- 요청한 것에 따라 달라짐-->
				<c:choose>
					<c:when test="${false}">	<!-- 계정 찾기 요청 -->
						<span>
						계정을 찾으려면
						<br>
						휴대폰 인증이 필요해요
						</span>
					</c:when>
	              	<c:when test="${true}">	<!-- 비밀번호 찾기 요청 -->
						<span>
						비밀번호 재설정
						<br>
						본인인증이 필요해요
						</span>
	              	</c:when>
              	</c:choose>
				</h1>
				<p class="theFindAccount_message"><span>반드시 본인의 휴대폰 번호로 인증해 주세요.</span></p>
			</div>
			<footer class="theScreen_footer">
				<button class="Button -large w-full -primary -filled">인증하고 계정찾기</button>
			</footer>
		</div>
	</div>
</body>
</html>