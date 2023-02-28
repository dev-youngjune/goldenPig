
	// 모달창
	const $modalOpenButton = $("#modal-open");
	const $modalExitButton = $(".modal-exit-box");
	const $passwordModalButton = $("#password-button");
	const $modal = $("#modal");	
	const $modal2 = $("#modal2");
	
	$modalOpenButton.click(function(){
		$modal.fadeIn(200);
	});
	
	$modalExitButton.click(function(){
		$modal.fadeOut(200);
	});
	
	$passwordModalButton.click(function(){
		$modal2.fadeIn(200);
	});
	
	$modalExitButton.click(function(){
		$modal2.fadeOut(200);
	});
	
	

	// 인증번호
	const $certificationButton = $(".certification-number");
	let certificationNumber;

	$certificationButton.click(function() {
		$.ajax({
			url : contextPath + "/SMSOk.member",
			data : {
				memberPhoneNumber : $phone.val()
			},
			success : function(result) {
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
			url : contextPath + "/checkPhoneOk.member",
			data : {
				memberPhoneNumber : $phone.val()
			},
			success : function(result) {
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
	
	$confirmButton.click(function(){
		if(check.filter(check => check == true).length != 2){
			alert("인증번호를 먼저 인증해주세요.");
			return false;
		}
		
		$.ajax({
			url : contextPath + "/phoneNumberUpdateOk.member",
			data : {memberPhoneNumber : $phone.val()}
		});
		
		$modal.fadeOut(200);
		$phoneModal.fadeIn(200);
	});
	
	function logout(){
		alert("로그아웃이 되었습니다.");
		location.href= contextPath + "/logoutOk.member";
	}
	
	$passwordPhoneCheck = $(".modal-phoneCheck-button");
	
	$passwordPhoneCheck.click(function(){
		if(check.filter(check => check == true).length != 2){
			alert("인증번호를 먼저 인증해주세요.");
			return false;
		}
		
		location.href = contextPath + '/';
	});
	