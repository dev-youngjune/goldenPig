<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재설정</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/account/account_password.css">
</head>
<body>
	<div id="wrap">
		<main>
			<div>
				<div id="secession_board">
					
						<header>
							<img src="${pageContext.request.contextPath}/static/img/admin/logo_icon.png" class="logo-img"> 
							<img class="a_headerLogo" src="${pageContext.request.contextPath}/static/img/header/logo_title_icon.png">
						</header>
						<form action="${pageContext.request.contextPath}/passwordOk.member" class="password-change">
						<div id="withdrawal_select">
							<h1 style="position: relative">
								<span id="element">비밀번호 재설정</span>
							</h1>
							<div style="margin-bottom: 3rem; margin-top: 0.75rem">
								<span style="--tw-text-opacity: 1; color: rgba(156, 165, 179, var(--tw-text-opacity));">새로운 비밀번호를 입력해 주세요.</span>
							</div>
							<div style="display: block; padding-top: 0.5rem">
								<span style="font-size: 13px">비밀번호</span>
								<div id="input_email">
									<input class="email_text new-password" id="new_password" type="password" placeholder="새로운 비밀번호를 입력해 주세요." name="memberPassword">
									<div class="hide eye"></div>
									<p class="error-new-password error-message"></p>
								</div>
							</div>
							<div style="display: block; padding-top: 0.5rem">
								<span style="font-size: 13px">비밀번호 확인</span>
								<div id="input_email">
									<input class="email_text confirm-password" id="repeat_password"type="password" placeholder="비밀번호를 다시 한번 입력해 주세요.">
									<div class="hide eye"></div>
									<p class="error-confirm-password error-message"></p>
								</div>
							</div>
						</div>
						</form>	
						<footer>
							<button id="confirm"> 재설정 후 자동로그인 </button>
						</footer>
					
				</div>
			</div>
		</main>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
let userInput = $(".email_text");
let check = [false, false];
const $confirm = $("#confirm");

$("div.eye").click(function(){
	console.log("input.hide 나옴");
	var thisDiv = $(this);
	var thisInput = thisDiv.parent().children().first();
    if(thisInput.attr("type") == "password"){
    	thisInput.attr("type","text");
    	thisDiv.attr("class","show eye");
    }else if(thisInput.attr("type") == "text"){
    	thisInput.attr("type","password");
        thisDiv.attr("class","hide eye");
    }
});

// 비밀번호 

const $password = $(".new-password");
const $confirmPassword = $(".confirm-password");
const $errorNewPassword = $(".error-new-password");
const $errorConfirmPassword = $(".error-confirm-password");
var rgbPassword =/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;

$password.blur( function(){
	// password value 값
	let passwordValue = $password.val();

    if(passwordValue.length == 0){    // 빈문자열이 들어왔을 때
        $errorNewPassword.css("display", "block");
        $errorNewPassword.css("color", "red");
        $errorNewPassword.text("비밀번호를 입력해주세요.");
		check[0] = false;

    }else if(!rgbPassword.test(passwordValue)){
        $errorNewPassword.css("display", "block");
        $errorNewPassword.css("color", "red");
        $errorNewPassword.text("최소 8 자, 하나 이상의 문자, 하나의 숫자 및 하나의 특수 문자를 입력해주세요.");
		check[0] = false;
		
	}else {
		$errorNewPassword.css("display", "none");
		check[0] = true;
  	}
    
    buttonActive();
});


$confirmPassword.blur( function(){
   // password value 값
   let passwordValue = $confirmPassword.val();
    // 정규식

	if (!($password.val() == passwordValue)) {
		$errorConfirmPassword.css("display", "block");
		$errorConfirmPassword.css("color", "red");
		$errorConfirmPassword.text("비밀번호가 일치하지 않습니다.");
		check[1] = false;
		
	} else if(passwordValue.length == 0){
		$errorConfirmPassword.css("display", "block");
		$errorConfirmPassword.css("color", "red");
		$errorConfirmPassword.text("비밀번호를 입력해주세요.");
		check[1] = false;
		
	} else {
		$errorConfirmPassword.css("display", "none");
		check[1] = true;
  	}
    
	buttonActive();
});

function buttonActive(){
	if(check.filter(check=> check == true).length == 2){
		$confirm.css("background-color", "#0206AF");
		$confirm.css("color", "#FFF");
		$confirm.css("cursor", "pointer");
		
	}else {
		$confirm.css("background-color", "#5682EF");
		$confirm.css("color", "#7EA5F2");
		$confirm.css("cursor", "not-allowed");
		
	}
}

$confirm.click(function(){
	if(check.filter(check=> check == true).length != 2){
		alert("비밀번호 확인 또는 비밀번호 입력 오류입니다.");
		return false;
	}
	
	$(".password-change").submit();
});
</script>
</html>