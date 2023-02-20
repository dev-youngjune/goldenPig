<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 변경하기</title>
<link rel="stylesheet" href="../assets/account/account_email.css">
<style>
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}
</style>
</head>
<body>
	<div id="wrap">
		<main>
			<div>
				<div id="secession_board">
					<header>
						<img alt="" src="../assets/img/logo.png" style="width: 96px; height: 54px; cursor: pointer">
					</header>
					<div id="withdrawal_select">
							<h1 style="position: relative">
								<span id="element">이메일 변경하기</span>
							</h1>
							<div style="margin-bottom: 3rem; margin-top: 0.75rem">
								<span style="font-weight: 600;--tw-text-opacity: 1; color: rgba(156, 165, 179, var(--tw-text-opacity));">자주 사용하는 이메일을 입력해 주세요!</span>
							</div>
						<div style="display: block; padding-top: 2.5rem">
							<label>이메일</label>
							<div id="input_email">
								<input id="email_text" type="text" placeholder="이메일을 입력해 주세요.">
							</div>
						</div>
					</div>
					<footer>
						<button> 확인 </button>
					</footer>
				</div>
			</div>
		</main>
	</div>
</body>
</html>