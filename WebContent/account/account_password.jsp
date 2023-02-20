<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재설정</title>
<link rel="stylesheet" href="../assets/account/account_password.css">
<style>
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
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
								<span style="font-weight: 600;--tw-text-opacity: 1; color: rgba(156, 165, 179, var(--tw-text-opacity));">새로운 비밀번호를 입력해 주세요.</span>
							</div>
						<div style="display: block; padding-top: 0.5rem">
							<span>비밀번호</span>
							<div id="input_email">
								<input id="email_text" type="text" placeholder="새로운 비밀번호를 입력해 주세요.">
								<div class="hide eye" style="display: block; width: 22px; height: 15px"></div>
							</div>
						</div>
						<div style="display: block; padding-top: 0.5rem">
							<span>비밀번호 확인</span>
							<div id="input_email">
								<input id="email_text" type="text" placeholder="비밀번호를 다시 한번 입력해 주세요.">
								<div class="hide eye" style="display: block; width: 22px; height: 15px"></div>
							</div>
						</div>
					</div>
					<footer>
						<button> 재설정 후 자동로그인 </button>
					</footer>
				</div>
			</div>
		</main>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
let userPassword = $("#email_text");

$(".hide").click(function(){
    if(userPassword.attr("type") == "password"){
        $(".hide").img(src="../assets/img/account/hide.PNG");
        userPassword.attr("type","text");
    }else if(userPassword.attr("type") == "text"){
        userPassword.attr("type","password");
        $(".hide").text("표시");
    }
});
</script>
</html>