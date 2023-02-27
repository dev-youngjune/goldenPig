	const $toogle = $(".toggle-item");
	
	$toogle.each((i, e) =>{
		let $span = $(e).find("span");
		let $check = $(e).parents(".toggle").children("input").is(":checked");
		let $message = $(e).parents(".load-data").find(".use");
		let count = 1
			$(e).click(function(){
				console.log($message.text());
				if(count == 1){
					$(e).css("background","#0080ff");
					$span.css("translate","22px");	
					$(e).parents(".toggle").children("input").prop("checked",true);
					$message.text("사용 중");
					count = 0;
				}else {
					$(e).css("background","red");
						$span.css("translate","0px");
					$(e).parents(".toggle").children("input").prop("checked",false);
					$message.text("사용 중지");
					count = 1;
				}
			});
	}); 