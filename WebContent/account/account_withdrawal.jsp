<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<link rel="stylesheet" href="../assets/css/account/account_withdrawal.css">
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
						<img alt="" src="../assets/img/account/logo.png">
					</header>
					<div id="withdrawal_select">
						<h1 style="position: relative">
							<span id="element">탈퇴 사유 선택</span>
						</h1>
						<div style="margin-bottom: 3rem; margin-top: 0.75rem">
							<ul>
								<li>
									<label>
										<div>
											<input type="checkbox">
											<span>서비스 이용이 불만족스럽습니다.</span>
										</div>
									</label>
								</li>
								<li>
									<label>
										<div>
											<input type="checkbox">
											<span>이미 다른 유사 서비스를 사용하고 있습니다.</span>
										</div>
									</label>
								</li>
								<li>
									<label>
										<div>
											<input type="checkbox">
											<span>너무 많은 이메일,알림을 받습니다.</span>
										</div>
									</label>
								</li>
								<li>
									<label>
										<div>
											<input type="checkbox">
											<span>사유 없음</span>
										</div>
									</label>
								</li>
								<li>
									<label>
										<div>
											<input type="checkbox">
											<span>기타</span>
										</div>
									</label>
								</li>
							</ul>
						</div>
					</div>
					<footer>
						<div style="display: flex; align-items: center; justify-content: space-between">
							<a id="cancel"> 취소 </a>
							<button id="confirm"> 탈퇴하기 </button>
						</div>
					</footer>
				</div>
			</div>
		</main>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	const labels = document.querySelectorAll("label");
	const temp = "#C7C7C7";
	console.log(temp);
	labels.forEach( label => {
		label.addEventListener("click",e => {
			var tar = e.target 
			tar.style.color = tar.style.color == "black" ? temp : "black"; 
			console.log("들어옴");
			/* tar.style.color = "black"; */
		})
		}
	)

</script>
</html>