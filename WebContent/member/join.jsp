<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아하(Aha) 인증센터</title>
<link rel="stylesheet" href="../assets/css/member/join.css">
</head>
<body style="margin:0px!important;">
	<div id="wrap">
		<div id="layout">
			<div class="layoutDefault">
				<main class="layoutDefault_view">
					<div class="join">
						<form class="joinl_form w-full">
							<div class="theScreen">
								<!-- header -->
								<header class="theScreen_header">
									<button type="button" class="theScreen_headerButton -left">
										<img src="">
									</button>
									<a class="theScreen_headerLoga">
										<img class="a_headerLogo" src="../assets/img/account/logo.png">
									</a>
								</header>
								
								<!-- theScreen -->
								<div class="theScreen_body px-5">
									<h1 class="textTitle">
										<span>회원가입</span>
									</h1>
									<div class="theJoin_body">
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">이메일</label>
												<div class="TextField_body">
													<input type="text" placeholder="이메일을 입력해주세요" class="TextField_bodyInput" autocomplete value>
												</div>
											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">비밀번호</label>
												<div class="TextField_body">
													<input type="password" placeholder="비밀번호를 입력해주세요" class="TextField_bodyInput" autocomplete value>
													<!-- <button type="button" tabindex="-1" class="TextField_bodyButton -off"> -->
														<img class="eye" src="../assets/img/member/passwordEye.png">
													<!-- </button> -->
												</div>
											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">비밀번호 확인</label>
												<div class="TextField_body">
													<input type="text" placeholder="비밀번호를 입력해주세요" class="TextField_bodyInput" autocomplete value>
													<!-- <button type="button" tabindex="-1" class="TextField_bodyButton -off"> -->
														<img class="eye" src="../assets/img/member/passwordEye.png">
													<!-- </button> -->
												</div>
											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">이름</label>
												<div class="TextField_body">
													<input type="text" placeholder="이름을 입력해주세요" class="TextField_bodyInput" autocomplete value>
												</div>
											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">닉네임</label>
												<div class="TextField_body">
													<input type="text" placeholder="닉네임을 입력해주세요" class="TextField_bodyInput" autocomplete value>
												</div>
											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">핸드폰</label>
												<div class="TextField_body">
													<input type="text" placeholder="핸드폰 번호를 입력해주세요" class="TextField_bodyInput" autocomplete value>
												</div>
											</div>
										</div>
										<!-- <div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">생년월일</label>
												<div class="TextField_body">
													<input type="text" placeholder="생년월일을 입력해주세요." class="TextField_bodyInput" autocomplete value>
												</div>
											</div>
										</div> -->
										<div class="TextField">
											<label class="TextField_label">생년월일</label>
											<div class="TextField_body">
												<div class="birth_">
													<div class="birth_div">
														<div class="birth_div_div">
															<div class="birth_div_div_div">
																<input class="birth_div_div_div_input" name="birthYear" placeholder="YYYY" type="text">
															</div>
														</div>
														<span class="birth_span"></span>
														<div class="birth_div_div">
															<div class="birth_div_div_div">
																<input class="birth_div_div_div_input" name="birthYear" placeholder="MM" type="text">
															</div>
														</div>
														<span class="birth_span"></span>
														<div class="birth_div_div">
															<div class="birth_div_div_div">
																<input class="birth_div_div_div_input" name="birthYear" placeholder="DD" type="text">
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- footer -->
								<footer class="theScreen_footer">
									<button type="submit" class="Button -large w-full -primary -filled">회원가입</button>
									<button class="Button mt-2 -large w-full -transparent">
										<a href="">
										아이디가 존재하나요?
										</a>
									</button>
								</footer>
							</div>
						</form>
					</div>
				</main>
			</div>
		</div>
	</div>
</body>
</html>