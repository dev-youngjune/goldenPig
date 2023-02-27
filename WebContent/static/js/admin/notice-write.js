const $noticeButton = $("#notice-button");
	
	$noticeButton.click(function(){
		
		if(!($(".notice-title").val())){
			
			alert("제목을 입력해주세요.");
		}else if(!($(".notice-content").val())){
			
			alert("내용을 입력해주세요.");
		}
		
	});