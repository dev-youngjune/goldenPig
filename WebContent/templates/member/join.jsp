<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>골든피그-회원가입</title>
<link rel="stylesheet"href="${pageContext.request.contextPath}/static/css/member/join.css">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon/fevicon.png">
</head>
<body style="margin: 0px !important">
	<div id="wrap">
		<div id="layout">
			<div class="layoutDefault">
				<main class="layoutDefault_view">
					<div class="join">
							<div class="theScreen">
								<!-- header -->
								<header class="theScreen_header">
									<button type="button" class="theScreen_headerButton -left">
										<img src="">
									</button>
									<a class="theScreen_headerLoga"> 
										<img src="${pageContext.request.contextPath}/static/img/admin/logo_icon.png" class="logo-img"> 
										<img class="a_headerLogo" src="${pageContext.request.contextPath}/static/img/header/logo_title_icon.png">
									</a>
								</header>

								<!-- theScreen -->
								<form class="joinl_form w-full" action="${pageContext.request.contextPath}/JoinOk.member" name="join">
								<div class="theScreen_body px-5">
									<h1 class="textTitle">
										<span>회원가입</span>
									</h1>
									<div class="theJoin_body">
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">이메일</label>
												<div class="TextField_body">
													<input name="memberEmail" type="text" placeholder="이메일을 입력해주세요" class="TextField_bodyInput">
												</div>
												<p class="error-message-email" style="margin: 0;"></p>
											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">비밀번호</label>
												<div class="TextField_body">
													<input name="memberPassword" type="password" placeholder="비밀번호를 입력해주세요" class="TextField_bodyInput first"> 
													<img class="eye close-eye" src="${pageContext.request.contextPath}/static/img/member/passwordEyeSlash.png">
												</div>
												<p class="error-message-password" style="margin: 0;"></p>

											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">비밀번호 확인</label>
												<div class="TextField_body">
													<input name="memberPasswordCheck" type="password" placeholder="비밀번호를 입력해주세요" class="TextField_bodyInput first"> 
													<img class="eye close-eye" src="${pageContext.request.contextPath}/static/img/member/passwordEyeSlash.png">
												</div>
												<p class="error-message-password-check" style="margin: 0;"></p>

											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">이름</label>
												<div class="TextField_body">
													<input name="memberName" type="text"
														placeholder="이름을 입력해주세요" class="TextField_bodyInput">
												</div>
												<p class="error-message-name" style="margin: 0;"></p>

											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">닉네임</label>
												<div class="TextField_body">
													<input name="memberNickName" type="text" placeholder="닉네임을 입력해주세요" class="TextField_bodyInput">
												</div>
												<p class="error-message-nickname" style="margin: 0;"></p>

											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">핸드폰</label>
												<div class="TextField_body">
													<input name="memberPhoneNumber" type="text" placeholder="('-')을 제외한 핸드폰 번호를 입력해주세요" class="TextField_bodyInput" maxlength="11">
													<div class="certification-number-box">
														<button type="button" class="certification-number">인증번호 보내기</button>
													</div>
												</div>
												<p class="error-message-phone" style="margin: 0;"></p>
												<div class="TextField_body certificationNumber-checkbox">
													<input name="certificationNumber" type="text" placeholder="인증번호 입력" class="TextField_bodyInput checkNumber">
													<div class="certification-number-box">
														<button type="button" class="certification-number-check">인증번호 확인</button>
													</div>
												</div>
												<p class="error-message-numberCheck" style="margin: 0;"></p>
											</div>
										</div>
										<!-- <div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">생년월일</label>
												<div class="TextField_body">
													<input type="text" placeholder="생년월일을 입력해주세요." class="TextField_bodyInput" >
												</div>
											</div>
										</div> -->
										<div class="TextField">
											<label class="TextField_label">생년월일</label>
											<div class="TextField_body birth-box">
												<div class="birth_">
													<div class="birth_div">
														<div class="birth_div_div">
															<div class="birth_div_div_div">
																<input class="birth_div_div_div_input"
																	name="memberBirthYear" placeholder="YYYY" type="text"
																	maxlength="4">
															</div>
														</div>
														<span class="birth_span"></span>
														<div class="birth_div_div">
															<div class="birth_div_div_div">
																<input class="birth_div_div_div_input"
																	name="memberBirthMonth" placeholder="MM" type="text"
																	maxlength="2">
															</div>
														</div>
														<span class="birth_span"></span>
														<div class="birth_div_div">
															<div class="birth_div_div_div">
																<input class="birth_div_div_div_input"
																	name="memberBirthDay" placeholder="DD" type="text"
																	maxlength="2">
															</div>
														</div>
													</div>
												</div>
											</div>
											<p class="error-message-birth" style="margin: 0;"></p>
										</div>
									</div>
								</div>
								</form>
								<!-- footer -->
								<footer class="theScreen_footer">
									<!-- <button type="button" class="theScreen_Button_submit " onclik="return check()">회원가입</button> -->
									<button class="theScreen_Button_submit " name="submit"id="join-button">회원가입</button>
									<button class="theScreen_button_a" onclick="location.href='${pageContext.request.contextPath}/login.member'">
										아이디가 존재하나요?
									</button>
								</footer>
							</div>
						
					</div>
				</main>
			</div>
		</div>
	</div>
</body>
<script>let contextPath = "${pageContext.request.contextPath}"</script>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
let joinCheckAll = [false, false, false, false, false, ,false, false, false, false, false];
// 이메일 정규식

const $email = $("input[name=memberEmail]");
const $errorMessageEmail = $(".error-message-email");
const rgbEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

	$email.on("blur", function(e){
	    var emailValue = $email.val(); 
	    $.ajax({
			url: contextPath + "/checkIdOk.member",
			data: {memberEmail: emailValue},
			success: function(result){
				let message;
				result = JSON.parse(result);
				if(result.check){
					$errorMessageEmail.css('display', 'block');
					$errorMessageEmail.text("중복된 이메일입니다.");
					$errorMessageEmail.css('color', 'red');
					
				}else if(emailValue.length == 0){    // 빈문자열이 들어왔을 때
			        $errorMessageEmail.css("display", "block");
			        $errorMessageEmail.css("color", "red");
			        $errorMessageEmail.text("이메일을 입력해주세요.");
			        
			    }else if (!rgbEmail.test(emailValue)){  
					$errorMessageEmail.css("display", "block");
			        $errorMessageEmail.css("color", "red"); // 올바른 이메일 형식이 아닐 때
			        $errorMessageEmail.text("잘못된 이메일 형식입니다.");
			        
			    } else {
			    	$errorMessageEmail.css('display', 'none');
			    	joinCheckAll[0] = true;
			    }
			}
		});
	});


// 비밀번호 

const $password = $("input[name=memberPassword]");
const $errorMessagePassword = $(".error-message-password");

$password.on("blur", function(e){
    var passwordValue = $password.val(); 
    var rgbPassword =/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;

    if(passwordValue.length == 0){    // 빈문자열이 들어왔을 때
        $errorMessagePassword.css("display", "block");
        $errorMessagePassword.css("color", "red");
        $errorMessagePassword.text("비밀번호를 입력해주세요.");

    } else if(!rgbPassword.test(passwordValue)){  
        $errorMessagePassword.css("display", "block");
        $errorMessagePassword.css("color", "red");  // 올바른 비밀번호 형식이 아닐 때
        $errorMessagePassword.text("최소 8 자, 하나 이상의 문자, 하나의 숫자 및 하나의 특수 문자를 입력해주세요.");
    } else {
        $errorMessagePassword.css("display", "none");
        joinCheckAll[1] = true;
    }
});


// 비밀번호 확인  

const $passwordCheck = $("input[name=memberPasswordCheck]");
const $errorMessagePasswordCheck = $(".error-message-password-check");

$passwordCheck.on("blur", function(e){
    const $passwordCheck = $("input[name=memberPasswordCheck]");
    var passwordValue = $password.val(); 
    var passwordCheckValue = $passwordCheck.val();

    if(passwordCheckValue.length == 0){    // 빈문자열이 들어왔을 때
        $errorMessagePasswordCheck.css("display", "block");
        $errorMessagePasswordCheck.css("color", "red");
        $errorMessagePasswordCheck.text("비밀번호를 입력해주세요.");

    } else if(!(passwordCheckValue == passwordValue)){  
        $errorMessagePasswordCheck.css("display", "block");
        $errorMessagePasswordCheck.css("color", "red");  // 올바른 비밀번호 형식이 아닐 때
        $errorMessagePasswordCheck.text("비밀번호가 일치 하지않습니다.");
    } else {
        $errorMessagePasswordCheck.css("display", "none");
        joinCheckAll[2] = true;
    }
});

	// 이름 
	const $name = $("input[name=memberName]");
	const $errorMessageName = $(".error-message-name");

	$name.on("blur", function(e){
	    var nameValue = $name.val();
	    var rgbName = /^[가-힣]{2,5}$/;
	
	    if(nameValue.length == 0) {
	        $errorMessageName.css("display", "block");
	        $errorMessageName.css("color", "red");
	        $errorMessageName.text("이름을 입력해주세요.");
	
	    }else if(!rgbName.test(nameValue)) {
	        $errorMessageName.css("display", "block");
	        $errorMessageName.css("color", "red");
	        $errorMessageName.text("한글 이름 2~5자 이내 입력해주세요.");
	    } else {
	        $errorMessageName.css("display", "none");
	        joinCheckAll[3] = true;
	    } 
});


// 닉네임 
    const $nickName = $("input[name=memberNickName]");
    const $errorMessageNickName = $(".error-message-nickname");
    
    $nickName.on("click", function(e){
        var nicknameValue = $nickName.val();
        var rgbNickName = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,16}$/;
        
        if(nicknameValue.length == 0){
            $errorMessageNickName.css("display","block");
            $errorMessageNickName.css("color","red");
            $errorMessageNickName.text("닉네임을 입력해주세요")

        } else if(!rgbNickName.test(nicknameValue)){
            $errorMessageNickName.css("display","block");
            $errorMessageNickName.css("color","red");
            $errorMessageNickName.text("닉네임을 2자 이상 16자 이하, 영어 또는 숫자 또는 한글로 입력해주세요.")
        } else {
            $errorMessageNickName.css("display","none");
            joinCheckAll[4] = true;
        }
    });

    // 연도
    const $year = $("input[name=memberBirthYear]");
    const $errorBirth = $(".error-message-birth");

    $year.on("blur", function(e){
        var yearValue = $year.val();
        var rgbYear = /^\d{4}$/;
    
        if(yearValue.length == 0) {
	        $errorBirth.css("display", "block");
	        $errorBirth.css("color", "red");
	        $errorBirth.text("생년 월일을 다시 입력해주세요");
	        
        } else if(!rgbYear.test(yearValue)) {
            $errorBirth.css("display", "block");
            $errorBirth.css("color", "red");
            $errorBirth.text("연도는 4자리를 입력해주세요");
            
        } else if(!(parseInt(yearValue) >= 1950)){
        	$errorBirth.css("display", "block");
            $errorBirth.css("color", "red");
            $errorBirth.text("1950년 이상만 입력 가능합니다.");
            
        } else {
        	$errorBirth.css("display", "none");
        	joinCheckAll[5] = true;
        }
    });


// 월
const $month = $("input[name=memberBirthMonth]");

$month.on("blur", function(e){
        var monthValue = $month.val();
        var rgbMonth = /^\d{2}$/;

        if(monthValue.length == 0) {
	        $errorBirth.css("display", "block");
	        $errorBirth.css("color", "red");
	        $errorBirth.text("생년 월일을 다시 입력해주세요");

    	}else if(!rgbMonth.test(monthValue)) {
	        $errorBirth.css("display", "block");
	        $errorBirth.css("color", "red");
	        $errorBirth.text("월은 2자리를 입력해주세요");
        
    	} else if(!(parseInt(monthValue) >= 1 && parseInt(monthValue) <= 12)){
    		$errorBirth.css("display", "block");
	        $errorBirth.css("color", "red");
	        $errorBirth.text("1월 ~ 12월로만 입력해주세요");
	        
    	} else {
    	 	$errorBirth.css("display", "none");
    	 	joinCheckAll[6] = true;
    	}
});


// 일 
const $day = $("input[name=memberBirthDay]");

$day.on("blur", function(e){
        var dayValue = $day.val();
        var rgbDay = /^\d{2}$/;
        
        if(dayValue.length == 0) {
        $errorBirth.css("display", "block");
        $errorBirth.css("color", "red");
        $errorBirth.text("생년 월일을 다시 입력해주세요");
 	
    }else if(!rgbDay.test(dayValue)) {
        $errorBirth.css("display", "block");
        $errorBirth.css("color", "red");
        $errorBirth.text("일은 2자리를 입력해주세요");

    } else if(!(parseInt(dayValue) >= 1 && parseInt(dayValue) <= 31)){
		$errorBirth.css("display", "block");
        $errorBirth.css("color", "red");
        $errorBirth.text("1일 ~ 31일로만 입력해주세요");
        
	} else {
        $errorBirth.css("display", "none");
        joinCheckAll[7] = true;
    }
});



	// 비밀번호 text and password 
  	const $eye = $(".eye");
    const $first = $(".first");
	$eye.each((i,e) => {
				
		$(e).click(function(){
			if($(e).hasClass("close-eye")) {
				console.log(${contextPath});
				$(e).removeClass("close-eye");
	            $($first[i]).attr("type", "password");
	            $(e).attr("src", contextPath + '/static/img/member/passwordEyeSlash.png');
	        } else {
				$(e).addClass("close-eye");
				$($first[i]).attr("type", "text")
	            $(e).attr("src", contextPath + '/static/img/member/passwordEye.png');
	        }
		});
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
   let phoneCheck;   
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
			    	   joinCheckAll[8] = phoneCheck;
			    	   $errorMessagePhone.css("display","none");
			    	   $certificationBox.fadeIn();
			       }
			}
		});
       
   });
   
   
   $certificationCheckButton.click(function(){
	   let code = certificationNumber.code;
	
	   if(code == $(".checkNumber").val()){
		    $(".error-message-numberCheck").css("color","blue");
			$(".error-message-numberCheck").text("인증번호가 일치합니다.");
			joinCheckAll[9] = true;
	   }else {
		   	$(".error-message-numberCheck").css("color","red");
			$(".error-message-numberCheck").text("인증번호가 불일치합니다.");
	   }
   });
   
   
   // 회원 가입 버튼
   const $joinButton = $("#join-button");
   
	$joinButton.click(function(){
		console.log(joinCheckAll.filter(check => check == true ).length);
		if(joinCheckAll.filter(check => check == true ).length != 9){
			alert("잘못 입력된 정보가 있습니다. 확인해주세요.");
			return false;
		}
	});
		
   
    
    
</script>
</html>