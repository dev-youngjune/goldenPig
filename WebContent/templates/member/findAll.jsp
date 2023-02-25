<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>아하(Aha) 인증센터</title>
<link rel="stylesheet" href="../../assets/css/member/find.css">
</head>
<body class="find_body">
	<div id="wrap">
		<div id="layout">
			<div class="layoutDefault">
				<main class="layoutDefault_view">
					<c:choose>
						<%-- model.addAttribute("path", "target"); --%>
						<%-- target에 경로를 목적지를 설정하여 account, email, password 중 하나인 것에 따라 페이지를 다르게 보이게 함 --%>
						<c:when test="${false}">		<%-- 계정 찾기 test="${path == `account`}" --%>
							<jsp:include page="../member/findAccount.jsp" flush="false" />
						</c:when>
						<c:when test="${true}">	<%-- 이메일 / 비밀번호 찾기 test="${path == `email` || path == `password`" --%>
							<jsp:include page="../member/findEmail.jsp" flush="false" />
						</c:when>
					</c:choose>
				</main>
			</div>
		</div>
	</div>
</body>
</body>
</html>