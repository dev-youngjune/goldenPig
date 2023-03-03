<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아하(Aha) 인증센터</title>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon/fevicon.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/find.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/findPassword.css">
</head>
<body style="margin:0px!important;">
		<!-- 모달 -->
		<div id="modal">
			<div class="modal-box">
				<div class="modal-box-layout">
					<div class="modal-title-box">
						<h3 class="modal-title">휴대폰 번호 인증</h3>
						<div class="modal-exit-box">
							<span class="modal-exit">X</span>
						</div>
						</div>	
						<div class="modal-input-box">
							<div class="modal-input-box-layout">
								<div>
									<span>이름</span>
								</div>
								<input id="memberName" name="memberName" type="text" placeholder="성명 입력" class="modal-input" value="${member.memberName}">
							</div>
							<div class="modal-input-box-layout">
								<div>
									<span>휴대폰 번호</span>
								</div>
								<div class="modal-relative">
									<input id="memberPhoneNumber" name="memberPhoneNumber" type="text" placeholder="숫자만 입력" class="modal-input" maxlength="11">
									<button class="certification-button certification-number">인증번호 발송</button>
									<span class="phone-error-message"></span>
								</div>
							</div>
							<div class="modal-input-box-layout certificationNumber-checkbox">
								<div>
									<span>인증 번호</span>
								</div>
								<div class="modal-relative">
									<input type="text" placeholder="숫자만 입력"  class="modal-input checkNumber">
									<input type="button" placeholder="인증번호 확인" value="인증번호 확인" class="certification-button certification-number-check">
									<span class="error-message-numberCheck"></span>
								</div>
							</div>
						</div>
					
					<div class="modal-confirm-button-box">
						<div class="modal-confirm-button-box-layout">
							<button class="modal-confirm-button">완료</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	<div id="wrap">
		<div id="layout">
			<div class="layoutDefault">
				<main class="layoutDefault_view">
					<div class="theFindAccount">
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
							<div class="theScreen_body px-5">
								<h1 class="textTitle">
									<span>
									비밀번호 재설정
									<br>
									본인인증이 필요해요
									</span>
								</h1>
								<p class="theFindAccount_message"><span>반드시 본인의 휴대폰 번호로 인증해 주세요.</span></p>
							</div>
							<footer class="theScreen_footer">
								<button class="Button -large w-full -primary -filled phone-check-button">인증하고 비밀번호 변경</button>
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
<script src="${pageContext.request.contextPath}/static/js/member/findPassword.js"></script>
</html>