<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/account/account_modify_footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/account/account_modify.css">
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
<!-- 헤더 -->
	<div>
		<header id="header">
			<div id="header_div">
				<img alt="" src="${pageContext.request.contextPath}/static/img/account/logo.png" style="width: 60px">
			</div>
		</header>
	</div>
	<div id="wrap">
	<!-- 휴대폰 번호 변경을 누르면 나오는 모달창 -->
		<div id="modal">
			<div style="margin: 0 auto; width: 207px; position: relative;">
				<h3 style="font-size: 23px; display: inline-block;">휴대폰 번호 인증</h3>
				<label style="cursor: pointer;">
					<span style="position: absolute; right: -62px; top: 6px;">X</span>
					<button id="modal_btn_cancel" style="display: none;"></button>
				</label>
				<div>
					<div>
						<div style="margin-top: 1.5rem; width: 74%;">
							이름
						</div>
						<input type="text" placeholder="성명 입력" style="height: 30px; outline: none; border-top: none;
						 border-right: none; border-left: none; border-color: rgb(230,230,230);" value="${member.memberName}">
					</div>
					<div>
						<div style="margin-top: 1.5rem; width: 81%;">
							휴대폰 번호
						</div>
						<div style="position: relative;">
							<input type="text" placeholder="숫자만 입력" style="height: 30px; outline: none; border-top: none;
							 border-right: none; border-left: none; border-color: rgb(230,230,230);" value="${member.memberPhoneNumber}">
							<input type="button" placeholder="인증번호 발송" value="인증번호 발송" style="height: 30px; position: absolute; 
							right: -66px; background-color: #0206AF; color: white; border-top: none; border-bottom: none; border-left: none; border-right: none; border-radius: 10px;">
						</div>
					</div>
					<div>
						<div style="margin-top: 1.5rem; width: 81%;">
							인증 번호
						</div>
						<div style="position: relative;">
							<input type="text" placeholder="숫자만 입력" style="height: 30px; outline: none; border-top: none;
							 border-right: none; border-left: none; border-color: rgb(230,230,230);">
							<input type="button" placeholder="인증번호 확인" value="인증번호 확인" style="height: 30px; position: absolute; 
							right: -66px; background-color: #0206AF; color: white; border-top: none; border-bottom: none; border-left: none; border-right: none; border-radius: 10px;">
						</div>
					</div>
				</div>	
				<div style="display: flex; margin: auto; justify-content: center;">
<!-- 					<footer style="margin-top: 1.5rem; justify-content: flex-end;">
						<button id="modal_btn_cancel">취소</button>
					</footer> -->
					<footer style="margin-top: 1.5rem; justify-content: flex-end;">
						<button id="modal_btn" class="">확인</button>
					</footer>
				</div>
			</div>
		</div>
		<!-- 휴대폰 번호 변경을 완료한후 나오는 모달창 -->
		<div id="modal_phone">
			<div>
				<h4 style="font-size: 18px">휴대폰 번호를 변경하였어요.</h4>
				<div style="margin-top: 0.5rem;text-align: center; color: #484c53; word-break: keep-all;">이제 변경한 번호로 골든피그를 이용할 수 있어요.</div>
			</div>
			<footer style="margin-top: 2.5rem; display: flex; justify-content: flex-end;">
				<button id="modal_phone_btn">확인</button>
			</footer>
		</div>
		<div></div>
		<h1>인증센터</h1>
		<section>
			<h2 class ="board_name">이메일</h2>
			<div class="board" style="justify-content: space-between; display: flex">
				<span style="padding-top: 12px; letter-spacing: 0"><c:out value="${member.memberEmail}"/></span>
				<button class="change_button all_button" style="border-color: rgba(230, 230, 230, var(--tw-border-opacity))" onclick="location.href='${pageContext.request.contextPath}/modifyEmail.member'">
				변경
				</button>
			</div>
		</section>
		<section>
			<h2 class ="board_name">휴대폰 번호</h2>
			<div class="board" style="justify-content: space-between; display: flex">
				<span style="padding-top: 12px; letter-spacing: 0"><c:out value="${member.memberPhoneNumber}"/></span>
				<button class="change_button all_button" id="change_modal" style="border-color: rgba(230, 230, 230, var(--tw-border-opacity))">변경</button>
			</div>
		</section>
		<section style="margin-top: 48px; display: flex">
			<button class="all_button" id="password">비밀번호 재설정</button>
			<button class="all_button" id="log_out">로그아웃</button>
		</section>
		<section style="margin-top: 20px; text-align: right">
			<a style="margin-right: 0.25rem; display: inline; vertical-align: middle; cursor: pointer">
				<img alt="" src="${pageContext.request.contextPath}/static/img/account/minus.png" style="position: absolute; width: 23px; left: -23px; top: -2px">
				회원 탈퇴
			</a>
		</section>
	</div>
	<div>
		<footer class="footer">
			<hr style="border: solid 0.1px #e6e6e6">
			<div class="footer-container container-base">
				<div class="footer-container-left">
					<article class="footer-contents">
						<ul class="footer-menu">
							<li class="mr-3"><a href="#">서비스 이용약관</a></li>
							<li class="mr-3"><a href="#">유료 서비스 이용약관</a></li>
							<li class="mr-3"><a href="#">개인정보취급방침</a></li>
						</ul>
						<div class="all-rights">
           				 	© 2023 Aha. All rights reserved.
						</div>
					</article>
					<div class="logo-wrapper">
						<a href="#">
							<img class="logo-img" src="${pageContext.request.contextPath}/static/img/account/logo.png" alt="">
						</a>
					</div>
				</div>
				<div class="footer-container-right"></div>
			</div>
		</footer>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	const btn = document.querySelector("#change_modal");
	const modal = document.querySelector("#modal");
	const modal_btn = document.querySelector("#modal_btn");
	const modal_btn_cancel = document.querySelector("#modal_btn_cancel");
	const modal_phone = document.querySelector("#modal_phone");
	const modal_phone_btn = document.querySelector("#modal_phone_btn");
	
	btn.addEventListener("click",() => {
		modal.style.display = "flex";
	});
	
	modal_btn_cancel.addEventListener("click",() =>{
		modal.style.display = "none";
	});
	
	modal_btn.addEventListener("click",() =>{
		modal.style.display = "none";
		modal_phone.style.display = "flex";
	});
	
	modal_phone_btn.addEventListener("click",() =>{
		modal_phone.style.display = "none";
	});
	
	
	   // 인증번호
	   const $certificationButton = $(".certification-number");
	   const $certificationBox = $(".certification-number-box");
	   let certificationNumber;
	   
	   $certificationButton.click(function(){
			$.ajax({
				url: contextPath + "/SMSOk.member",
				data: {memberPhoneNumber: $phone.val()},
				success : function(result){
					certificationNumber= JSON.parse(result);
					return certificationNumber;				
				}
			});
		   
		   $(".certificationNumber-checkbox").fadeIn();
	   });
	   
	// 핸드폰
	   const $certificationCheckButton = $(".certification-number-check");
	   const $phone = $("input[name=memberPhoneNumber]");
	   const $errorMessagePhone = $(".error-message-phone");
	   let rgbPhone = /^(\d{0,3})(\d{0,4})(\d{0,4})$/;
	   $phone.on("blur", function(e){

		   $.ajax({
				url: contextPath + "/checkPhoneOk.member",
				data: {memberPhoneNumber: $phone.val()},
				success : function(result){
					console.log(result);
					phoneCheck = JSON.parse(result);
					
					 if($phone.val().length == 0){
				    	  $errorMessagePhone.text("핸드폰 번호를 입력해주세요.");
				    	  $errorMessagePhone.css("display","block");
				    	  $errorMessagePhone.css("color","red");
				    	  $certificationBox.fadeOut();
				    	  
				       }else if(!rgbPhone.test($phone.val())){
				    	  $errorMessagePhone.text("형식에 맞게 작성해주세요.");
					   	  $errorMessagePhone.css("display","block");
					   	  $errorMessagePhone.css("color","red");
					   	$certificationBox.fadeOut();
					   	
				       }else if(!($phone.val().length == 11)){
				    	   $errorMessagePhone.text("핸드폰 자리 11자리로 입력해주세요.");
						   $errorMessagePhone.css("display","block");
						   $errorMessagePhone.css("color","red");
						   $certificationBox.fadeOut();
						   
				       }else if(!($phone.val().substring(0,3) == "010")){
				    	   $errorMessagePhone.text("010으로 시작해주세요.");
						   $errorMessagePhone.css("display","block");
						   $errorMessagePhone.css("color","red");
						   $certificationBox.fadeOut();
				       }
				       
				       else if(phoneCheck.check){
				    	   $errorMessagePhone.text("중복된 핸드폰 번호입니다.");
				    	   $errorMessagePhone.css("display","block");
				 	   	   $errorMessagePhone.css("color","red");
				 	   		$certificationBox.fadeOut();
				 	   		
				       }else{
				    	   $errorMessagePhone.css("display","none");
				    	   $certificationBox.fadeIn();
				       }
				}
			});
	
</script>
</html>