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
								<input class="email_text goal-setting" id="new_password" type="number" onkeyup="formatNumber()" placeholder="새로운 목표금액을 입력해 주세요.">
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
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>

	function formatNumber() {
  let input = document.getElementById("new_password").value;
  let result = "";

  // 입력된 숫자가 음수인 경우 앞에 '-'를 추가합니다.
  if (input.charAt(0) === "-") {
    result += "-";
    input = input.slice(1);
  }

  // 입력된 숫자를 3자리씩 쉼표로 구분하여 결과 문자열에 추가합니다.
  let i = input.length - 3;
  while (i >= 0) {
    result = "," + input.slice(i, i+3) + result;
    i -= 3;
  }
  if (i > -3) {
    result = input.slice(0, i+3) + result;
  }
  var temp;
if(result.charAt() == ","){
	temp = result.split("");
	result = "";
	for (let i = 1; i < temp.length; i++) {
		result += temp[i];
	}
}	
  // 결과 문자열에 '원'을 추가합니다.
  result += "원";

  document.getElementById("result").innerHTML = result;
}
const $goalSetting = $(".goal-setting");
const $confirm = $("#confirm");


$goalSetting.blur(function(){

	if(!$(this).val() && !$("#currentDate").val()){

		$confirm.css("background-color", "trgba(86, 130, 239, var(--tw-bg-opacity)");
		$confirm.css("cursor", "not-allowed");
		$confirm.css("color", "rgba(126, 165, 242, var(--tw-text-opacity))"	);
		
	}else {
		$confirm.css("background-color", "rgb(2, 6, 175)");
		$confirm.css("cursor", "pointer");
		$confirm.css("color", "white");
		
	}
});


</script>
</html>