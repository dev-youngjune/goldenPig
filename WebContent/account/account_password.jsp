<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재설정</title>
<link rel="stylesheet" href="../assets/css/account/account_password.css">
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
div.eye {
    cursor: pointer;
    width: 50px;
    height: 25px;
    background-size: 100%;
    background-repeat: no-repeat;
}
div.show {
    background-image: url("../assets/img/account/show.PNG");
}
div.hide {
    background-image: url("../assets/img/account/hide.PNG");
}
</style>
</head>
<body>
	<div id="wrap">
		<main>
			<div>
				<div id="secession_board">
					<header>
						<img alt="" src="../assets/img/account/logo.png" style="width: 96px; height: 54px; cursor: pointer">
					</header>
					<div id="withdrawal_select">
							<h1 style="position: relative">
								<span id="element">비밀번호 재설정</span>
							</h1>
							<div style="margin-bottom: 3rem; margin-top: 0.75rem">
								<span style="font-weight: 600;--tw-text-opacity: 1; 
								color: rgba(156, 165, 179, var(--tw-text-opacity));">새로운 비밀번호를 입력해 주세요.</span>
							</div>
						<div style="display: block; padding-top: 0.5rem">
							<span style="font-size: 13px">비밀번호</span>
							<div id="input_email">
								<input class="email_text" id="new_password" type="text" placeholder="새로운 비밀번호를 입력해 주세요.">
								<div class="hide eye" style=" display: block; width: 37px; height: 39px; position: absolute; top: -8px; right: -4px;"></div>
							</div>
						</div>
						<div style="display: block; padding-top: 0.5rem">
							<span style="font-size: 13px">비밀번호 확인</span>
							<div id="input_email">
								<input class="email_text" id="repeat_password"type="text" placeholder="비밀번호를 다시 한번 입력해 주세요.">
								<div class="hide eye" style=" display: block; width: 37px; height: 39px; position: absolute; top: -8px; right: -4px;"></div>
							</div>
						</div>
					</div>
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
/* $("div.show").click(function(){
	console.log("input.show 나옴");
	var thisDiv = $(this);
    if(userInput.attr("type") == "password"){
    	userInput.attr("type","text");
    	thisDiv.attr("class","hide eye");
    }else if(userInput.attr("type") == "text"){
    	userInput.attr("type","password");
    	thisDiv.attr("class","show eye");
    }
}); */
</script>
</html>