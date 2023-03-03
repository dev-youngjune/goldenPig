<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>골든피그-회원가입</title>
<link rel="stylesheet"href="${pageContext.request.contextPath}/static/css/member/join.css">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon/fevicon.png">
</head>
<body style="margin: 0px !important">
	<div id="wrap">
		<div id="layout">
			<div class="layoutDefault">
				<main class="layoutDefault_view">
					<div class="join">
							<div class="theScreen">
								<!-- header -->
								<header class="theScreen_header">
									<button type="button" class="theScreen_headerButton -left">
										<img src="">
									</button>
									<a class="theScreen_headerLoga"> 
										<img src="${pageContext.request.contextPath}/static/img/admin/logo_icon.png" class="logo-img"> 
										<img class="a_headerLogo" src="${pageContext.request.contextPath}/static/img/header/logo_title_icon.png">
									</a>
								</header>

								<!-- theScreen -->
								<form class="joinl_form w-full" action="${pageContext.request.contextPath}/JoinOk.member" name="join" id="join-form">
								<div class="theScreen_body px-5">
									<h1 class="textTitle">
										<span>회원가입</span>
									</h1>
									<div class="theJoin_body">
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">이메일</label>
												<div class="TextField_body">
													<input name="memberEmail" type="text" placeholder="이메일을 입력해주세요" class="TextField_bodyInput">
												</div>
												<p class="error-message-email" style="margin: 0;"></p>
											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">비밀번호</label>
												<div class="TextField_body">
													<input name="memberPassword" type="password" placeholder="비밀번호를 입력해주세요" class="TextField_bodyInput first"> 
													<img class="eye close-eye" src="${pageContext.request.contextPath}/static/img/member/passwordEyeSlash.png">
												</div>
												<p class="error-message-password" style="margin: 0;"></p>

											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">비밀번호 확인</label>
												<div class="TextField_body">
													<input name="memberPasswordCheck" type="password" placeholder="비밀번호를 입력해주세요" class="TextField_bodyInput first"> 
													<img class="eye close-eye" src="${pageContext.request.contextPath}/static/img/member/passwordEyeSlash.png">
												</div>
												<p class="error-message-password-check" style="margin: 0;"></p>

											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">이름</label>
												<div class="TextField_body">
													<input name="memberName" type="text"
														placeholder="이름을 입력해주세요" class="TextField_bodyInput">
												</div>
												<p class="error-message-name" style="margin: 0;"></p>

											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">닉네임</label>
												<div class="TextField_body">
													<input name="memberNickName" type="text" placeholder="닉네임을 입력해주세요" class="TextField_bodyInput">
												</div>
												<p class="error-message-nickname" style="margin: 0;"></p>

											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">핸드폰</label>
												<div class="TextField_body">
													<input name="memberPhoneNumber" type="text" placeholder="('-')을 제외한 핸드폰 번호를 입력해주세요" class="TextField_bodyInput" maxlength="11">
													<div class="certification-number-box">
														<button type="button" class="certification-number">인증번호 보내기</button>
													</div>
												</div>
												<p class="error-message-phone" style="margin: 0;"></p>
												<div class="TextField_body certificationNumber-checkbox">
													<input name="certificationNumber" type="text" placeholder="인증번호 입력" class="TextField_bodyInput checkNumber">
													<div class="certification-number-box">
														<button type="button" class="certification-number-check">인증번호 확인</button>
													</div>
												</div>
												<p class="error-message-numberCheck" style="margin: 0;"></p>
											</div>
										</div>
										<!-- <div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">생년월일</label>
												<div class="TextField_body">
													<input type="text" placeholder="생년월일을 입력해주세요." class="TextField_bodyInput" >
												</div>
											</div>
										</div> -->
										<div class="TextField">
											<label class="TextField_label">생년월일</label>
											<div class="TextField_body birth-box">
												<div class="birth_">
													<div class="birth_div">
														<div class="birth_div_div">
															<div class="birth_div_div_div">
																<input class="birth_div_div_div_input"
																	name="memberBirthYear" placeholder="YYYY" type="text"
																	maxlength="4">
															</div>
														</div>
														<span class="birth_span"></span>
														<div class="birth_div_div">
															<div class="birth_div_div_div">
																<input class="birth_div_div_div_input"
																	name="memberBirthMonth" placeholder="MM" type="text"
																	maxlength="2">
															</div>
														</div>
														<span class="birth_span"></span>
														<div class="birth_div_div">
															<div class="birth_div_div_div">
																<input class="birth_div_div_div_input"
																	name="memberBirthDay" placeholder="DD" type="text"
																	maxlength="2">
															</div>
														</div>
													</div>
												</div>
											</div>
											<p class="error-message-birth" style="margin: 0;"></p>
										</div>
									</div>
								</div>
								</form>
								<!-- footer -->
								<footer class="theScreen_footer">
									<!-- <button type="button" class="theScreen_Button_submit " onclik="return check()">회원가입</button> -->
									<button class="theScreen_Button_submit " name="submit"id="join-button">회원가입</button>
									<button class="theScreen_button_a" onclick="location.href='${pageContext.request.contextPath}/login.member'">
										아이디가 존재하나요?
									</button>
								</footer>
							</div>
					</div>
				</main>
			</div>
		</div>
	</div>
</body>
<script>let contextPath = "${pageContext.request.contextPath}"</script>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/member/join.js"></script>
</html>