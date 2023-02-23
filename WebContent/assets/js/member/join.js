/**
 * 
 */


// 이메일 정규식

const $email = $("input[name=memberEmail]");
const $errorMessageEmail = $(".error-message-email");


$email.on("blur", function(e){
    var emailValue = $email.val(); 
    var rgbEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

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

