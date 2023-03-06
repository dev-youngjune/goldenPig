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



/*---------------------- 체크 된 게시물의 번호 가져오기 ----------------------*/


	const $checkBoxs = $("input[type=checkbox]");
	const $deleteButton = $(".delete-button");
	
	$deleteButton.on("click", function(e) {
		let bannerIdArr = [];
		
		$checkBoxs.each((i, checkBox) => {
			if($(checkBox).prop("checked")) {
				bannerIdArr.push($(checkBox).parent().siblings(".bannerId").text());
			} 
		})
		if(bannerIdArr) {
			confirm(bannerIdArr + "번을 삭제하시겠습니까?");
		} else {
			confirm("공지사항 게시글을 선택해주세요.");
		}
		console.log(bannerIdArr);
		console.log(contextPath);
		adminNoticeService.remove(bannerIdArr);
	});
	
	const adminNoticeService = (function(){
		function remove(bannerIdArr) {
			$.ajax({
				traditional: true,
				url: contextPath + "/adminBannerDelete.admin",
				data: {bannerIdArr : bannerIdArr},
				success: function() {
					location.reload();
				}
			});
		};
		
		return {remove: remove}
	})();