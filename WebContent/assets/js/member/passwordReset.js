/**
 * 
 */  

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
