
// 모달창
const $modalOpenButton = $("#modal-open");
const $modalExitButton = $(".modal-exit-box");
const $passwordModalButton = $("#password-button");
const $modal = $("#modal");
const $modal2 = $("#modal2");

$modalOpenButton.click(function() {
	$modal.fadeIn(200);
});

$modalExitButton.click(function() {
	$modal.fadeOut(200);
});

$passwordModalButton.click(function() {
	$modal2.fadeIn(200);
});

$modalExitButton.click(function() {
	$modal2.fadeOut(200);
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

	$.ajax({
		url: contextPath + "/checkPhoneOk.member",
		data: {
			memberPhoneNumber: $phone.val()
		},
		success: function(result) {
			phoneCheck = JSON.parse(result);

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

			} else if (phoneCheck.check) {
				check[0] = false;
				$errorMessagePhone.text("중복된 핸드폰 번호입니다.");
				$errorMessagePhone.css("display", "block");
				$errorMessagePhone.css("color", "red");
				$certificationButton.fadeOut();

			} else {
				check[0] = true;
				$errorMessagePhone.css("display", "none");
				$certificationButton.fadeIn();
			}
		}
	});

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


const $confirmButton = $(".modal-confirm-button");
const $phoneModal = $("#modal-phone");

$confirmButton.click(function() {
	if (check.filter(check => check == true).length != 2) {
		alert("인증번호를 먼저 인증해주세요.");
		return false;
	}

	$.ajax({
		url: contextPath + "/phoneNumberUpdateOk.member",
		data: { memberPhoneNumber: $phone.val() }
	});

	$modal.fadeOut(200);
	$phoneModal.fadeIn(200);
});

function logout() {
	alert("로그아웃이 되었습니다.");
	location.href = contextPath + "/logoutOk.member";
}

$passwordPhoneCheck = $(".modal-phoneCheck-button");

$passwordPhoneCheck.click(function() {
	if (check1.filter(check => check == true).length != 2) {
		alert("인증번호를 먼저 인증해주세요.");
		return false;
	}

	location.href = contextPath + '/password.member';
});

/* 비밀번호 재설정 핸드폰번호 인증*/

const $certificationCheckButton2 = $(".certification-number-check2");
const $phoneNumber = $("input[name=memberPhoneNumberCheck]");
const $phoneCheckerror = $(".phoneCheck-error-message");
let phoneCheck1;
let check1 = [false, false];

$phoneNumber.on("blur", function(e) {

	$.ajax({
		url: contextPath + "/checkPhoneOk.member",
		data: {
			memberPhoneNumber: $phoneNumber.val()
		},
		success: function(result) {
			phoneCheck1 = JSON.parse(result);
		
			if ($phoneNumber.val().length == 0) {
				check1[0] = false;
				$phoneCheckerror.text("핸드폰 번호를 입력해주세요.");
				$phoneCheckerror.css("display", "block");
				$phoneCheckerror.css("color", "red");
				$certificationButton2.fadeOut();

			} else if (!rgbPhone.test($phoneNumber.val())) {
				check1[0] = false;
				$phoneCheckerror.text("형식에 맞게 작성해주세요.");
				$phoneCheckerror.css("display", "block");
				$phoneCheckerror.css("color", "red");
				$certificationButton2.fadeOut();

			} else if (!($phoneNumber.val().length == 11)) {
				check1[0] = false;
				$phoneCheckerror.text("핸드폰 자리 11자리로 입력해주세요.");
				$phoneCheckerror.css("display", "block");
				$phoneCheckerror.css("color", "red");
				$certificationButton2.fadeOut();

			} else if (!($phoneNumber.val().substring(0, 3) == "010")) {
				check1[0] = false;
				$phoneCheckerror.text("010으로 시작해주세요.");
				$phoneCheckerror.css("display", "block");
				$phoneCheckerror.css("color", "red");
				$certificationButton2.fadeOut();

			} else if (!phoneCheck1.check) {
				check1[0] = false;
				$phoneCheckerror.text("본인 핸드폰번호를 입력해주세요.");
				$phoneCheckerror.css("display", "block");
				$phoneCheckerror.css("color", "red");
				$certificationButton2.fadeOut();

			} else {
				check1[0] = true;
				$phoneCheckerror.css("display", "none");
				$certificationButton2.fadeIn();
			}
		}
	});
});


const $certificationButton2 = $(".certification-number2");
let certificationNumber2;

$certificationButton2.click(function() {
	$.ajax({
		url: contextPath + "/SMSOk.member",
		data: {
			memberPhoneNumber: $phoneNumber.val()
		},
		success: function(result) {
			certificationNumber2 = JSON.parse(result);
			return certificationNumber2;
		}
	});

	$(".certificationNumber-checkbox2").fadeIn();
	$certificationButton2.fadeOut();
});

$certificationCheckButton2.click(function() {
	let code = certificationNumber2.code;
	console.log($(".checkNumber2").val());

	if (code == $(".checkNumber2").val()) {
		$(".error-message-numberCheck2").css("color", "blue");
		$(".error-message-numberCheck2").text("인증번호가 일치합니다.");
		check1[1] = true;
	} else {
		$(".error-message-numberCheck2").css("color", "red");
		$(".error-message-numberCheck2").text("인증번호가 불일치합니다.");
		check1[1] = false;
	}
});