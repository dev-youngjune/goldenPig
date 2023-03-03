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

let memberId = "<c:out value='${memberId}'/>"

$confirm.click(function(){
	if(check.filter(check=> check == true).length != 2){
		alert("비밀번호 확인 또는 비밀번호 입력 오류입니다.");
		return false;
	}
	
	alert("비밀번호 변경 완료");
	location.href= contextPath + "/passwordOk.member?memberId=" + memberId + "&memberPassword=" + $("#new_password").val();
});