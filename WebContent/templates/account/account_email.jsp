<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 변경하기</title>
<link rel="stylesheet" href="../../assets/css/account/account_email.css">
<style>
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}
input, button, span{
	font-family: 'Pretendard-Regular';
}
</style>
</head>
<body>
	<div id="wrap">
		<main>
			<div>
				<div id="secession_board">
					<header>
						<img alt="" src="../../assets/img/account/logo.png" style="width: 96px; height: 54px; cursor: pointer">
					</header>
					<div id="withdrawal_select">
							<h1 style="position: relative">
								<span id="element">이메일 변경하기</span>
							</h1>
							<div style="margin-bottom: 3rem; margin-top: 0.75rem">
								<span style="font-weight: 400;--tw-text-opacity: 1; color: rgba(156, 165, 179, var(--tw-text-opacity));">자주 사용하는 이메일을 입력해 주세요!</span>
							</div>
						<div style="display: block; padding-top: 2.5rem;">
							<span style="font-size: 12px">이메일</span>
							<div id="input_email">
								<input id="email_text" type="text" placeholder="이메일을 입력해 주세요.">
								<p class="error-message-email" style="margin: 0;"></p>
							</div>
						</div>
					</div>
					<footer>
						<button id="confirm"> 확인 </button>
					</footer>
				</div>
			</div>
		</main>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	const $email_text = $("input#email_text");
	const confirm = document.querySelector("#confirm");
	const tempBackgroundColor = confirm.style.backgroundColor;
	const tempCursor = confirm.style.cursor;
	const tempColor = confirm.style.color;

	/* 확인 버튼 활성화 */
	$email_text.blur(() => {
		var emailVal = $email_text.val();

		if (emailVal) {
			confirm.style.backgroundColor = "rgb(2, 6, 175)";
			confirm.style.cursor= "pointer";
			confirm.style.color= "white";
		}else {
			confirm.style.backgroundColor = tempBackgroundColor;
			confirm.style.cursor= tempCursor;
			confirm.style.color= tempColor;
		}
	});

	$email_text.blur(function(){
		var emailVal = $email_text.val();

		if (emailVal) {
			confirm.style.backgroundColor = "rgb(2, 6, 175)";
			confirm.style.cursor= "pointer";
			confirm.style.color= "white";
		}else {
			confirm.style.backgroundColor = tempBackgroundColor;
			confirm.style.cursor= tempCursor;
			confirm.style.color= tempColor;
		}
	});

	// 이메일 정규식

const $email = $("input[id=email_text]");
const $errorMessageEmail = $(".error-message-email");


$email.on("blur", function(e){
    var emailValue = $email.val(); 
    var rgbEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

    if(emailValue.length == 0){    // 빈문자열이 들어왔을 때
        $errorMessageEmail.css("display", "block");
        $errorMessageEmail.css("color", "red");
        $errorMessageEmail.text("이메일을 입력해주세요.");
        
    } else if(rgbEmail.test(emailValue)){  
        $errorMessageEmail.css("display", "none");

    } else {
        $errorMessageEmail.css("display", "block");
        $errorMessageEmail.css("color", "red"); // 올바른 이메일 형식이 아닐 때
        $errorMessageEmail.text("잘못된 이메일 형식입니다.");
    }
});

</script>
</html>