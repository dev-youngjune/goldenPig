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
  	const $eye1 = $(".eye1");
    const $first = $(".first");


    $eye1.on("click", function(e) {
        if($eye1.hasClass("close-eye")) {
            $eye1.removeClass("close-eye");
            $first.attr("type", "password")
        } else {
            $eye1.addClass("close-eye");
            $first.attr("type", "text")
        }
    });


