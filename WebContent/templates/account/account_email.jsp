<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 변경하기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/account/account_email.css">
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
						<img alt="" src="${pageContext.request.contextPath}/static/img/account/logo.png" style="width: 96px; height: 54px; cursor: pointer">
					</header>
					<form action="${pageContext.request.contextPath}/modifyEmailOk.member">
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
									<input id="email_text" type="text" placeholder="이메일을 입력해 주세요." name="memberEmail">
									<p class="error-message-email" style="margin: 0;"></p>
								</div>
							</div>
						</div>
						<footer>
							<button id="confirm"> 확인 </button>
						</footer>
					</form>
				</div>
			</div>
		</main>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>let contextPath = "${pageContext.request.contextPath}"</script>
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

const $errorMessageEmail = $(".error-message-email");
const $email = $("input[name=memberEmail]");
const rgbEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
let check = false;

	$email.on("blur", function(e){
		
	    $.ajax({
			url: contextPath + "/checkIdOk.member",
			data: {memberEmail: $email.val()},
			success: function(result){
				let message;
				result = JSON.parse(result);
				if(result.check){
					$errorMessageEmail.css('display', 'block');
					$errorMessageEmail.text("중복된 이메일입니다.");
					$errorMessageEmail.css('color', 'red');
				}else if($email.val().length == 0){    // 빈문자열이 들어왔을 때
			        $errorMessageEmail.css("display", "block");
			        $errorMessageEmail.css("color", "red");
			        $errorMessageEmail.text("이메일을 입력해주세요.");
			        
			    }else if (!rgbEmail.test($email.val())){  
					$errorMessageEmail.css("display", "block");
			        $errorMessageEmail.css("color", "red"); // 올바른 이메일 형식이 아닐 때
			        $errorMessageEmail.text("잘못된 이메일 형식입니다.");
			        
			    } else {
			    	$errorMessageEmail.css('display', 'none');
			    	check= true;
			    }
			}
		});
	});
	
	const $submitButton = $("#confirm");
	
	$submitButton.click(function(){
		
		if(!check){
			alert("잘못된 형식또는 중복된 이메일입니다.");
			return false;
		}
		
		alert("이메일이 변경되었습니다.");
	});
	
</script>
</html>