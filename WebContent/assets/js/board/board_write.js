/**
 * 
 */

const $input = $(".input-text");
const $length = $(".title-number-check");

const $textarea = $("textarea");
const $boldImg = $("label[for=bold] img");
const $boldButton = $(".bold-button");


/*--------------------제목 입력 수 카운트--------------------*/	


$input.on("keyup", function(e) {
	var input = $(this).val();
	var count = 0;
	count = input.length;

	console.log(count);
	
	$length.text(`(${count} / 80자)`);
});


/*--------------------메뉴바 bold--------------------*/


$boldImg.on("click", function(e) {
	if($textarea.css("font-weight") == "700") {
		$textarea.css("font-weight", "normal");
		$boldButton.css("background", "#ffffff");
		$boldButton.css("border", "0");
		
		$boldImg.css("filter", "invert(77%) sepia(7%) saturate(534%) hue-rotate(177deg) brightness(84%) contrast(90%)");
		console.log($boldImg);
		
	} else {
		$textarea.css("font-weight", "bold");
		$boldButton.css("background", "#e8f0f9");
		$boldButton.css("border", "1px solid #0206af");
		
		$boldImg.css("filter", "invert(14%) sepia(71%) saturate(4680%) hue-rotate(240deg) brightness(74%) contrast(135%)");
	}
});


/*--------------------썸네일--------------------*/


	const $file = $("input[type=file]"); // 동일
	const $fileImg = $(".file-image-path"); // 동일
	const $fileName = $(".file-image-name");	// 동일
	const $closeSpan = $(".file-image-path span"); // 동일

	$closeSpan.on("click", function (e) {
		e.preventDefault();
		// input.value = "";
		$fileName.innerHTML = "";
		this.style.display = 'none';
		$fileImg.css("backgroundImage", `url('')`);
		$fileImg.css("display", "none");
		$fileName.text("");
	});


	$file.on("change", function(e) {
		let name = e.target.files[0].name;
		
		$fileName.text(name);
		$closeSpan.css("display", "inline-block");
		$file.css("display", "none");
		
		let reader = new FileReader();
		reader.readAsDataURL(e.target.files[0]);
		reader.onload = function (e) {
			let result = e.target.result;
			
			if (result.includes('image')) {
				$fileImg.css("backgroundImage", `url('${result}')`);
				$fileImg.css("background-repeat", "no-repeat");
				$fileImg.css("width", "180px");
				$fileImg.css("height", "180px");
			} else {
				console.log($fileImg);
				$fileImg.css("display", "none");
				$fileImg.css("backgroundImage", `url('')`);
				$fileName.text("");
			}
		};
	});











