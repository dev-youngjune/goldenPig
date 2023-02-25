<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아하(Aha) 인증센터</title>
<link rel="stylesheet" href="../../assets/css/member/join.css">
</head>
<body style="margin:0px!important">
	<div id="wrap">
		<div id="layout">
			<div class="layoutDefault">
				<main class="layoutDefault_view">
					<div class="join">
						<form class="joinl_form w-full">
							<div class="theScreen">
								<!-- header -->
								<header class="theScreen_header">
									<button type="button" class="theScreen_headerButton -left">
										<img src="">
									</button>
									<a class="theScreen_headerLoga">
										<img class="a_headerLogo" src="../../assets/img/account/logo.png">
									</a>
								</header>
								
							<!-- theScreen -->
								<div class="theScreen_body px-5">
									<h1 class="textTitle">
										<span>회원가입</span>
									</h1>
									<div class="theJoin_body">
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">이메일</label>
												<div class="TextField_body">
													<input name="memberEmail" type="text" placeholder="이메일을 입력해주세요" class="TextField_bodyInput" autocomplete value>
												</div>
                                                <p class="error-message-email" style="margin: 0;"></p>
											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">비밀번호</label>
												<div class="TextField_body">
													<input name="memberPassword" type="password" placeholder="비밀번호를 입력해주세요" class="TextField_bodyInput first" autocomplete value>
														<img class="eye1" src="../../assets/img/member/passwordEyeSlash.png">
												</div>
                                                <p class="error-message-password" style="margin: 0;"></p>

											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">비밀번호 확인</label>
												<div class="TextField_body">
													<input name ="memberPasswordCheck" type="password" placeholder="비밀번호를 입력해주세요" class="TextField_bodyInput second" autocomplete value>
														<img class="eye2" src="../../assets/img/member/passwordEyeSlash.png">
												</div>
                                                <p class="error-message-password-check" style="margin: 0;"></p>
                                                
											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
                                                <label class="TextField_label">이름</label>
												<div class="TextField_body">
                                                    <input name="memberName" type="text" placeholder="이름을 입력해주세요" class="TextField_bodyInput" autocomplete value>
												</div>
                                                <p class="error-message-name" style="margin: 0;"></p>

											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">닉네임</label>
												<div class="TextField_body">
													<input name="memberNickName" type="text" placeholder="닉네임을 입력해주세요" class="TextField_bodyInput" autocomplete value>
												</div>
                                                <p class="error-message-nickname" style="margin: 0;"></p>

											</div>
										</div>
										<div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">핸드폰</label>
												<div class="TextField_body">
													<input name="memberPhone" type="text" placeholder="핸드폰 번호를 입력해주세요" class="TextField_bodyInput" autocomplete value>
												</div>
                                                <p class="error-message-phone" style="margin: 0;"></p>

											</div>
										</div>
										<!-- <div class="theJoin_bodyInput">
											<div class="TextField">
												<label class="TextField_label">생년월일</label>
												<div class="TextField_body">
													<input type="text" placeholder="생년월일을 입력해주세요." class="TextField_bodyInput" autocomplete value>
												</div>
											</div>
										</div> -->
										<div class="TextField">
											<label class="TextField_label">생년월일</label>
											<div class="TextField_body">
												<div class="birth_">
													<div class="birth_div">
														<div class="birth_div_div">
															<div class="birth_div_div_div">
																<input class="birth_div_div_div_input" name="memberBirthYear" placeholder="YYYY" type="text">
															</div>
														</div>
														<span class="birth_span"></span>
														<div class="birth_div_div">
															<div class="birth_div_div_div">
																<input class="birth_div_div_div_input" name="memberBirthMonth" placeholder="MM" type="text">
															</div>
														</div>
														<span class="birth_span"></span>
														<div class="birth_div_div">
															<div class="birth_div_div_div">
																<input class="birth_div_div_div_input" name="memberBirthDay" placeholder="DD" type="text">
															</div>
                                                            
														</div>
													</div>
												</div>
											</div>
                                            <p class="error-message-birth" style="margin: 0;"></p>
										</div>
									</div>
								</div>
								<!-- footer -->
								<footer class="theScreen_footer">
									<!-- <button type="button" class="theScreen_Button_submit " onclik="return check()">회원가입</button> -->
									<button type="button" class="theScreen_Button_submit " name="submit">회원가입</button>
									<button class="theScreen_button_a">
										<a href="">
										아이디가 존재하나요?
										</a>
									</button>
								</footer>
							</div>
						</form>
					</div>
				</main>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<!-- <script src="../../assets/js/member/join.js"></script> -->
<script>


// 이메일 정규식

const $email = $("input[name=memberEmail]");
const $errorMessageEmail = $(".error-message-email");
const $submit = $("button[name=submit]")

$email.on("blur", function(e){
    var emailValue = $email.val(); 
    var rgbEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	console.log("들어왔니?")
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

    } else if(rgbPassword.test(passwordValue)){  
        $errorMessagePassword.css("display", "none");

    } else {
        $errorMessagePassword.css("display", "block");
        $errorMessagePassword.css("color", "red");  // 올바른 비밀번호 형식이 아닐 때
        $errorMessagePassword.text("최소 8 자, 하나 이상의 문자, 하나의 숫자 및 하나의 특수 문자를 입력해주세요.");

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

    } else if(passwordCheckValue == passwordValue){  
        $errorMessagePasswordCheck.css("display", "none");

    } else {
        $errorMessagePasswordCheck.css("display", "block");
        $errorMessagePasswordCheck.css("color", "red");  // 올바른 비밀번호 형식이 아닐 때
        $errorMessagePasswordCheck.text("비밀번호가 맞지 않습니다.");

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

    }else if(rgbName.test(nameValue)) {
        $errorMessageName.css("display", "none");

    } else {
        $errorMessageName.css("display", "block");
        $errorMessageName.css("color", "red");
        $errorMessageName.text("한글 이름 2~5자 이내 입력해주세요.");
        
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

        } else if(rgbNickName.test(nicknameValue)){
            $errorMessageNickName.css("display","none");
            
        } else {
            $errorMessageNickName.css("display","block");
            $errorMessageNickName.css("color","red");
            $errorMessageNickName.text("닉네임을 2자 이상 16자 이하, 영어 또는 숫자 또는 한글로 입력해주세요.")
        }
    });

// 핸드폰
    const $phone = $("input[name=memberPhone");
    const $errorMessagePhone = $(".error-message-phone");

    $phone.on("blur", function(e){
        var phoneValue = $phone.val();
        var rgbPhone = /^(\d{0,3})(\d{0,4})(\d{0,4})$/;

        if(phoneValue.length == 0 ){
            $errorMessagePhone.css("display", "block");
            $errorMessagePhone.css("color", "red");
            $errorMessagePhone.text("핸드폰 번호를 입력해주세요.");
            
        } else if(rgbPhone.test(phoneValue)){
            $errorMessagePhone.css("display", "none");
            
        }
            $errorMessagePhone.css("display", "block");
            $errorMessagePhone.css("color", "red");
            $errorMessagePhone.text("ex) 010-0000-0000");
    })

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
        $year.focus();
        
        } else if(rgbYear.test(yearValue)) {
            $errorBirth.css("display", "none");

        } else {
            $errorBirth.css("display", "block");
            $errorBirth.css("color", "red");
            $errorBirth.text("연도는 4자리를 입력해주세요");
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
        $month.focus();

    }else if(rgbMonth.test(monthValue)) {
        $errorBirth.css("display", "none");

    } else {
        $errorBirth.css("display", "block");
        $errorBirth.css("color", "red");
        $errorBirth.text("월은 2자리를 입력해주세요");
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
        $day.focus();

    }else if(rgbDay.test(dayValue)) {
        $errorBirth.css("display", "none");

    } else {
        $errorBirth.css("display", "block");
        $errorBirth.css("color", "red");
        $errorBirth.text("일은 2자리를 입력해주세요");
    }
});



	// 비밀번호 확인
  	const $eye1 = $(".eye1");
    const $eye2 = $(".eye2");
    const $first = $(".first");
    const $second = $(".second");


    $eye1.on("click", function(e) {
        if($eye1.hasClass("close-eye")) {
            $eye1.removeClass("close-eye");
            $first.attr("type", "password")
        } else {
            $eye1.addClass("close-eye");
            $first.attr("type", "text")
        }
    });

    $eye2.on("click", function(e) {
        if($eye2.hasClass("close-eye")) {
            $eye2.removeClass("close-eye");
            $second.attr("type", "password")
        } else {
            $eye2.addClass("close-eye");
            $second.attr("type", "text")
        }
    });
    
    let flag1 = false;
	let flag2 = false;
	let flag3 = false;
	let flag4 = false;
	let flag5 = false;
	let flag6 = false;
	let flag7 = false;
	let flag8 = false;
	let flag9 = false;
	


    $submit.on("click", function(){
    if(flag1 == true && flag2 == true && flag3 == true && flag4 == true && flag5 == true && flag6 == true && flag7 == true && flag8 == true && flag9 == true){
        alert("회원가입이 완료 되었습니다");
        // window.location.href = 'https://www.naver.com';
    }else if(flag1 == false){
        alert("이메일를 확인해주세요")
    }else if(flag2 == false){
        alert("비밀번호를 확인해주세요")
    }else if(flag3 == false){
        alert("비밀번호 확인란을 확인해주세요")
    }else if(flag4 == false){
        alert("이름을 확인해주세요")
    }else if(flag5 == false){
        alert("닉네임을 확인해주세요")
    }else if(flag6 == false){
        alert("핸드폰번호를 확인해주세요")
    }else if(flag7 == false){
        alert("생년월일을 확인해주세요")
    }else if(flag8 == false){
        alert("생년월일을 확인해주세요")
    }else if(flag9 == false){
        alert("생년월일을 확인해주세요")
    }
    });



</script>
</html>