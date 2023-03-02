<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon/fevicon.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/account/account_modify_footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/account/account_modify.css">
</head>
<body>
	<!-- 휴대폰 번호 변경을 누르면 나오는 모달창 -->
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
								<span>이 름</span>
							</div>
							<input name="memberName" type="text" placeholder="성명 입력" class="modal-input" value="${member.memberName}">
						</div>
						<div class="modal-input-box-layout">
							<div>
								<span>휴대폰 번호</span>
							</div>
							<div class="modal-input-box">
								<input name="memberPhoneNumber" type="text" placeholder="숫자만 입력" class="modal-input" maxlength="11">
								<button class="certification-button certification-number">인증번호 발송</button>
								<span class="phone-error-message"></span>
							</div>
						</div>
						<div class="modal-input-box-layout certificationNumber-checkbox">
							<div>
								<span>인증 번호</span>
							</div>
							<div class="modal-input-box">
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
		
		<!-- 비밀번호 재설정을 누르면 나오는 모달창 -->
		<div id="modal2">
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
								<span>이 름</span>
							</div>
							<input name="memberName" type="text" placeholder="성명 입력" class="modal-input" value="${member.memberName}">
						</div>
						<div class="modal-input-box-layout">
							<div>
								<span>휴대폰 번호</span>
							</div>
							<div class="modal-input-box">
								<input name="memberPhoneNumberCheck" type="text" placeholder="숫자만 입력" class="modal-input" maxlength="11">
								<button class="certification-button2 certification-number2">인증번호 발송</button>
								<span class="phoneCheck-error-message"></span>
							</div>
						</div>
						<div class="modal-input-box-layout certificationNumber-checkbox2">
							<div>
								<span>인증 번호</span>
							</div>
							<div class="modal-input-box">
								<input type="text" placeholder="숫자만 입력"  class="modal-input checkNumber2">
								<input type="button" placeholder="인증번호 확인" value="인증번호 확인" class="certification-button certification-number-check2">
								<span class="error-message-numberCheck2"></span>
							</div>
						</div>
					</div>	
					<div class="modal-confirm-button-box">
						<div class="modal-confirm-button-box-layout">
							<button class="modal-phoneCheck-button">완료</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 휴대폰 번호 변경을 완료한후 나오는 모달창 -->
		<div id="modal-phone">
			<div class="modal-phone-box">
				<div class="modal-phone-box-layout">
					<div>				
						<h2 class="modal-phone-title">휴대폰 번호를 변경하였어요.</h2>
					</div>
					<div class="modal-phone-content-box">
						<p>이제 변경한 번호로 골든피그를 이용할 수 있어요.</p>
					</div>
					<div class="modal-phone-button-box">
						<button class="modal-phone-button" onclick="location.href='${pageContext.request.contextPath}/modifyOk.member'">확인</button>
					</div>
				</div>
			</div>
		</div>

<!-- 헤더 -->
	<div>
		<header id="header">
			<div id="header_div">
				<img class="a_headerLogo" src="${pageContext.request.contextPath}/static/img/header/logo_title_icon.png">
			</div>
		</header>
	</div>
	
	<div id="wrap">
		<h1>인증센터</h1>
		<section>
			<h2 class ="board_name">이메일</h2>
			<div class="board" style="justify-content: space-between; display: flex">
				<span style="padding-top: 12px; letter-spacing: 0"><c:out value="${member.memberEmail}"/></span>
				<button class="change_button all_button" style="border-color: rgba(230, 230, 230, var(--tw-border-opacity))" onclick="location.href='${pageContext.request.contextPath}/modifyEmail.member'">
				변경
				</button>
			</div>
		</section>
		<section>
			<h2 class ="board_name">휴대폰 번호</h2>
			<div class="board" style="justify-content: space-between; display: flex">
				<span style="padding-top: 12px; letter-spacing: 0"><c:out value="${member.memberPhoneNumber}"/></span>
				<button class="change_button all_button" id="modal-open" style="border-color: rgba(230, 230, 230, var(--tw-border-opacity))">변경</button>
			</div>
		</section>
		<section style="margin-top: 48px; display: flex">
			<button class="all_button" id="password-button">비밀번호 재설정</button>
			<button class="all_button" id="log_out" onclick="logout()">로그아웃</button>
		</section>
		<section style="margin-top: 20px; text-align: right">
			<a style="margin-right: 0.25rem; display: inline; vertical-align: middle; cursor: pointer">
				<img alt="" src="${pageContext.request.contextPath}/static/img/account/minus.png" style="position: absolute; width: 23px; left: -23px; top: -2px">
				회원 탈퇴
			</a>
		</section>
	</div>
	<div>
		<footer class="footer">
			<hr style="border: solid 0.1px #e6e6e6">
			<div class="footer-container container-base">
				<div class="footer-container-left">
					<article class="footer-contents">
						<ul class="footer-menu">
							<li class="mr-3"><a href="#">서비스 이용약관</a></li>
							<li class="mr-3"><a href="#">유료 서비스 이용약관</a></li>
							<li class="mr-3"><a href="#">개인정보취급방침</a></li>
						</ul>
						<div class="all-rights">
           				 	© 2023 Aha. All rights reserved.
						</div>
					</article>
					<div class="logo-wrapper">
						<a href="#">
							<img class="logo-img" src="${pageContext.request.contextPath}/static/img/header/logo_title_icon.png">
						</a>
					</div>
				</div>
				<div class="footer-container-right"></div>
			</div>
		</footer>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>let contextPath = "${pageContext.request.contextPath}"</script>
<script src="${pageContext.request.contextPath}/static/js/account/modify.js"></script>
</html>