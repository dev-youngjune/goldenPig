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



const $form = $("#answer_form");

let text = "";
	text += `		
							<div class="profile-image-box">
								<div class="profile-image">
										<div class="file-image-path"></div>
 										<div>
											<img alt="" src="${contextPath}/static/img/member/${boardInfo.memberImgPath}">
										</div> 
								</div>
<!--  								<div class="profile-image-editor">
									<label for="image">
										<div class="profile-edit-button">프로필 사진 수정</div>
									</label>
									<input type="file" id="image" style="display: none;">
								</div>  -->
							</div>
							<div class="user-info-box">
								<div class="gray-box">
									<div class="gray-title">이름</div>
									<div class="gray-box-description">${boardInfo.memberNickName}</div>
								</div>
								<div class="gray-box margin-top">
									<div class="gray-title">답변글</div>
									<div class="gray-textarea-box">
										<textarea maxlength="59" placeholder="최대 60자까지 입력할 수 있어요."></textarea>
										<span class="available-length">0 / 60자</span>
									</div>
								</div>
							</div>
							<div class="box-flex-justify-center">
								<a type="button" href="${contextPath}/boardDetail.board">
									<span style="display: inline-block; margin-top: 19px; width: 100%; text-align: center;">이전</span>
								</a>
								<input type="submit" value="제출하기">
							</div>
							
	`;
	$form.append(text);
	
	text = "";
	
							
	