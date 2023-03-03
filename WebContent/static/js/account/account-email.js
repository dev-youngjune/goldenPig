	const $email_text = $("input#email_text");
	const confirm = document.querySelector("#confirm");
	const tempBackgroundColor = confirm.style.backgroundColor;
	const tempCursor = confirm.style.cursor;
	const tempColor = confirm.style.color;

	/* 확인 버튼 활성화 */
	$email_text.blur(() => {
		var emailVal = $email_text.val();

		if (emailVal) {
			confirm.style.backgroundColor = "rgb(2, 6, 175)";
			confirm.style.cursor= "pointer";
			confirm.style.color= "white";
		}else {
			confirm.style.backgroundColor = tempBackgroundColor;
			confirm.style.cursor= tempCursor;
			confirm.style.color= tempColor;
		}
	});

	$email_text.blur(function(){
		var emailVal = $email_text.val();

		if (emailVal) {
			confirm.style.backgroundColor = "rgb(2, 6, 175)";
			confirm.style.cursor= "pointer";
			confirm.style.color= "white";
		}else {
			confirm.style.backgroundColor = tempBackgroundColor;
			confirm.style.cursor= tempCursor;
			confirm.style.color= tempColor;
		}
	});

	// 이메일 정규식

const $errorMessageEmail = $(".error-message-email");
const $email = $("input[name=memberEmail]");
const rgbEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
let check = false;

	$email.on("blur", function(e){
		
	    $.ajax({
			url: contextPath + "/checkIdOk.member",
			data: {memberEmail: $email.val()},
			success: function(result){
				let message;
				result = JSON.parse(result);
				if(result.check){
					$errorMessageEmail.css('display', 'block');
					$errorMessageEmail.text("중복된 이메일입니다.");
					$errorMessageEmail.css('color', 'red');
				}else if($email.val().length == 0){    // 빈문자열이 들어왔을 때
			        $errorMessageEmail.css("display", "block");
			        $errorMessageEmail.css("color", "red");
			        $errorMessageEmail.text("이메일을 입력해주세요.");
			        
			    }else if (!rgbEmail.test($email.val())){  
					$errorMessageEmail.css("display", "block");
			        $errorMessageEmail.css("color", "red"); // 올바른 이메일 형식이 아닐 때
			        $errorMessageEmail.text("잘못된 이메일 형식입니다.");
			        
			    } else {
			    	$errorMessageEmail.css('display', 'none');
			    	check= true;
			    }
			}
		});
	});
	
	const $submitButton = $("#confirm");
	
	$submitButton.click(function(){
		
		if(!check){
			alert("잘못된 형식또는 중복된 이메일입니다.");
			return false;
		}
		
		alert("이메일이 변경되었습니다.");
	});
	