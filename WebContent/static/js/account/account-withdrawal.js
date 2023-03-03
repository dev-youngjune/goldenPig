	const temp = "#C7C7C7";
	const $goalSetting = $("input[name=check]");
	const $confirm = $("#confirm");
	const $span = $(".check-text");
	console.log();
	
$goalSetting.click(function(){
	let length = $("input[name=check]:checked").length;
	
	if(length == 0){
		$confirm.css("background-color", "#FCB4AE");
		$confirm.css("cursor", "not-allowed");
		$confirm.css("color", "white");
	}else {
		$confirm.css("background-color", "#F95B4C");
		$confirm.css("cursor", "pointer");
		$confirm.css("color", "white");
	}
});

$span.each((i, e) => {
	let check = $($goalSetting[i]);
		
	check.click(function(){
		if(check.is(":checked")){
			$(e).css("color", "black");
		}else {
			$(e).css("color", "rgba(199, 199, 199, var(--tw-text-opacity))");
		}
	});
});
	
	
	$confirm.click(function(){
		let checkLength = $("input[name=check]:checked").length;
		if(checkLength == 0){
			alert("최소 하나 선택하세요.");
			return false;
		}
		
		location.href= contextPath + "/withdrawalOk.member";
	});
