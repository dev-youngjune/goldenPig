/**
 * 
 */

const $length = $(".available-length");
const $textarea = $("textarea");

$textarea.on("keyup", function(e) {
	var textarea = $(this).val();
	var count = 0;
	count = textarea.length;

	$length.text(`(${count} / 60자)`);
});


/*------------------ 썸네일 ------------------*/


const $file = $("input[type=file]");
const $fileImg = $(".file-image-path"); 
const $fileName = $(".file-image-name");	
const $closeSpan = $(".file-image-path span");

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