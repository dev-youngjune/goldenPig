	const $toogle = $(".toggle-item");
	const $status = $(".status");
			
	
	
	
	$status.each((i, v) => {
		if($(v).val() == '0') {
			$toogle.eq(i).css("background","#0080ff");
			$toogle.find("span").css("translate","22px");	
			$toogle.eq(i).prop("checked", true);
			$($toogle.parents(".load-data").find(".use")[i]).text("사용 중");
		}
	});
		
		
		
	/*---------------------- 배너 사용 여부 토글 ----------------------*/
	
	
	$toogle.each((i, e) =>{
		let $span = $(e).find("span");
		let $check = $(e).parents(".toggle").children("input").is(":checked");
		let $message = $(e).parents(".load-data").find(".use");
		let count = 1;
			
		$(e).click(function(){
			console.log($message.text());
			let bannerId = $(e).parent().siblings(".bannerId").text(); 

			if(count == 1){	/* 여기가 토글이 켜진 상태 사용 중*/
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
			adminBannerService.update(bannerId, count);
		});
	}); 
	

	/*---------------------- 배너 ajaxs ----------------------*/	


	const adminBannerService = (function(){
		function update(bannerId, count){
			$.ajax({
				url: contextPath + "/adminBannerToggleUpdate.admin",
				data: {bannerId : bannerId, count: count}
			})
		}
		
		return {update: update}
	})();