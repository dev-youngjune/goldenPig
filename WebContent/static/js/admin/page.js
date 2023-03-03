	var $prev = $($(".page-button")[0]);
	
	$(".page-button").each((i, e) => {
		   var $pageNumber = $(e);
		   
		   $pageNumber.on("click", function(e) {
		      e.preventDefault();
		      if($prev == $pageNumber){
				  return;
			  }
		      
			  $prev.removeClass("page-button-active");
			  $pageNumber.addClass("page-button-active");
			  
			  $prev = $pageNumber;
		   });
		}); 
	
	
	/*------------------------- 관리자 공지사항 삭제 ajax -------------------------*/
	
	
	
	/*체크 된 게시물의 번호 가져오기*/
	const $checkBoxs = $("input[type=checkbox]");
	const $deleteButton = $(".delete-button");
	
	$deleteButton.on("click", function(e) {
		let noticeIdArr = [];
		
		$checkBoxs.each((i, checkBox) => {
			if($(checkBox).prop("checked")) {
				noticeIdArr.push($(checkBox).parent().siblings(".noticeId").text());
			} 
		})
		if(noticeIdArr) {
			confirm(noticeIdArr + "번을 삭제하시겠습니까?");
		} else {
			confirm("공지사항 게시글을 선택해주세요.");
		}
		console.log(noticeIdArr);
		console.log(contextPath);
		adminNoticeService.remove(noticeIdArr);
	});
	
	const adminNoticeService = (function(){
		function remove(noticeIdArr) {
			$.ajax({
				traditional: true,
				url: contextPath + "/adminNoticeDeleteOk.admin",
				data: {noticeIdArr : noticeIdArr},
				success: function() {
					location.reload();
				}
			});
		};
		
		return {remove: remove}
	})();
	
	