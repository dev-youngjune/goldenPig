const $file = $("input[type=file]");
	
	$file.change(function(e){
		let file = e.target.files[0];
		let reader = new FileReader();
	
		reader.onload = function(e){
			let result = e.target.result;
			$(".banner").attr("src", result);
		}
		
		reader.readAsDataURL(file);
	});