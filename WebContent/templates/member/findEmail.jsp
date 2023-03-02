<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>골든피그-핸드폰 본인인증(이메일)</title>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon/fevicon.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/find.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/findEmail.css">
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
									이메일 찾기
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
<script>
	const $phoneCheckButton = $(".phone-check-button");
	const $modal = $("#modal");
	const $exit = $(".modal-exit-box");
	
	$phoneCheckButton.click(function(){
		$modal.fadeIn();
	});
	
	$exit.click(function(){
		$modal.fadeOut();
	});
	
	
	// 인증번호
	const $certificationButton = $(".certification-number");
	let certificationNumber;

	$certificationButton.click(function() {
		$.ajax({
			url: contextPath + "/SMSOk.member",
			data: {
				memberPhoneNumber: $phone.val()
			},
			success: function(result) {
				certificationNumber = JSON.parse(result);
				return certificationNumber;
			}
		});

		$(".certificationNumber-checkbox").fadeIn();
		$certificationButton.fadeOut();
	});

	// 핸드폰
	const $certificationCheckButton = $(".certification-number-check");
	const $phone = $("input[name=memberPhoneNumber]");
	const $errorMessagePhone = $(".phone-error-message");
	let rgbPhone = /^(\d{0,3})(\d{0,4})(\d{0,4})$/;
	let phoneCheck;
	let check = [false, false];

	$phone.on("blur", function(e) {

				if ($phone.val().length == 0) {
					check[0] = false;
					$errorMessagePhone.text("핸드폰 번호를 입력해주세요.");
					$errorMessagePhone.css("display", "block");
					$errorMessagePhone.css("color", "red");
					$certificationButton.fadeOut();

				} else if (!rgbPhone.test($phone.val())) {
					check[0] = false;
					$errorMessagePhone.text("형식에 맞게 작성해주세요.");
					$errorMessagePhone.css("display", "block");
					$errorMessagePhone.css("color", "red");
					$certificationButton.fadeOut();

				} else if (!($phone.val().length == 11)) {
					check[0] = false;
					$errorMessagePhone.text("핸드폰 자리 11자리로 입력해주세요.");
					$errorMessagePhone.css("display", "block");
					$errorMessagePhone.css("color", "red");
					$certificationButton.fadeOut();

				} else if (!($phone.val().substring(0, 3) == "010")) {
					check[0] = false;
					$errorMessagePhone.text("010으로 시작해주세요.");
					$errorMessagePhone.css("display", "block");
					$errorMessagePhone.css("color", "red");
					$certificationButton.fadeOut();

				} else {
					check[0] = true;
					$errorMessagePhone.css("display", "none");
					$certificationButton.fadeIn();
				}
		});

	$certificationCheckButton.click(function() {
		let code = certificationNumber.code;

		if (code == $(".checkNumber").val()) {
			$(".error-message-numberCheck").css("color", "blue");
			$(".error-message-numberCheck").text("인증번호가 일치합니다.");
			check[1] = true;
		} else {
			$(".error-message-numberCheck").css("color", "red");
			$(".error-message-numberCheck").text("인증번호가 불일치합니다.");
			check[1] = false;
		}
	});

	const $modalCofirmButton = $(".modal-confirm-button");
	
	$modalCofirmButton.click(function(){
		
		if(check.filter(check => check == true).length != 2){
			alert("인증번호를 먼저 인증해주세요.");
			return false;
		}
		
		location.href= contextPath +"/findEmailOk.member?memberName=" +$("#memberName").val() + "&memberPhoneNumber=" + $("#memberPhoneNumber").val(); 
	});
	
</script>
</html>