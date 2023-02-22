<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목표금액 재설정</title>
<link rel="stylesheet" href="../assets/css/account/account_money.css">
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
						<img alt="" src="../assets/img/account/logo.png" style="width: 96px; height: 54px; cursor: pointer">
					</header>
					<div id="withdrawal_select">
							<h1 style="position: relative">
								<span id="element">목표금액 재설정</span>
							</h1>
							<div style="margin-bottom: 3rem; margin-top: 0.75rem">
								<span style="font-weight: 600;--tw-text-opacity: 1; 
								color: rgba(156, 165, 179, var(--tw-text-opacity));">새로운 목표금액과 목표기간을 입력해주세요.</span>
							</div>
						<div style="display: block; padding-top: 0.5rem">
							<span style="font-size: 13px">목표금액</span>
							<div id="input_email">
								<input class="email_text" id="new_password" type="number" onkeyup="formatNumber()" placeholder="새로운 목표금액을 입력해 주세요.">
								 <p id="result"></p>
								<div class="hide eye" style=" display: block; width: 37px; height: 39px; position: absolute; top: -8px; right: -4px;"></div>
							</div>
						</div>
						<div style="display: block; padding-top: 0.5rem">
							<span style="font-size: 13px">목표기간</span>
							<div id="input_email">
								<label for="currentDate">날짜를 입력하세요:</label>
								<input class="email_text" id="currentDate"type="date" placeholder="새로운 목표기간을 입력해 주세요.">
								<div class="hide eye" style=" display: block; width: 37px; height: 39px; position: absolute; top: -8px; right: -4px;"></div>
							</div>
						</div>
					</div>
					<footer>
						<button id="confirm"> 목표설정 </button>
					</footer>
				</div>
			</div>
		</main>
	</div>
</body>
<script>
	
	function formatNumber() {
		let input = document.getElementById("new_password").value;  
		let result = ""; 

		while (input.length > 0) {  
			if (input.length >= 3) {  
				result += input.slice(0, 3) + ",";  
				input = input.slice(3);  
			} else {  
			result += input + "원";
			input = "" 
			}
		}

		document.getElementById("result").innerHTML = result;  
		}
</script>
</html>