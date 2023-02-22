const $registButton = $("#regist-button");
	
	$registButton.click(function(){
		
		if(!($(".banner-name").val())){
			alert("배너명을 입력해주세요.");
		}else if(!($(".banner-date").val())){
			alert("등록기간을 입력해주세요.");
		}
	});