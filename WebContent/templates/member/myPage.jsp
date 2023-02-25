<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<link rel="stylesheet" href="../assets/css/member/mypage.css">
</head>
<body>
<jsp:include page="../../header/header.jsp" flush="false"/>
	<div id="fullScreen">
		<div id="wrap">
			<div>
				<div class="layout">
					<div class="profile_page">
						
						
						
						<header class="profile_Header">
							<div class="header_container">
								<button class="header_container_button -dark">
									<img src="../assets/img/member/camera_icon.png">
									커버 사진 수정
								</button>
								<button class="header_container_button -primary modal-open">프로필 편집</button>
							<!-- 	<button class="header_container_button buttonShare">
									<i class="icon icon=share-fill"></i>
								</button> -->
							</div>
							<div class="profile_Editor a-modal">
								<div class="scroll -open">
									<div class="a-modal_inner">
										<div class="a-modal_innerBody">
											<button class="close_button">
												<svg xmlns="http://www.w3.org/2000/svg" class="icon sprite-icons"><use href="https://www.a-ha.io/_nuxt/e56a5e482f8c842b09cf0e958d429c23.svg#i-cancel" xlink:href="https://www.a-ha.io/_nuxt/e56a5e482f8c842b09cf0e958d429c23.svg#i-cancel"></use></svg>
											</button>
											<div class="a-model_inner_header">
												<span >프로필 편집</span>
												<button class="a-model_inner_header_button">
													<img src="../assets/img/member/X.png" class="icons">
												</button>
											</div>
											<div class="a-model_profile_box row">
												<div class="a-model_profile_image_box tw-mb-5">
													<div class="profile-image">
														<img src="https://www.a-ha.io/_nuxt/img/default_profile.f2e66ea.svg">
													</div>
													<div class="a-model_profile_image_cropper">
														<label class="file-box">
															<div class="file-box-span">
																<span>프로필 추가</span>
															</div>
															<input type="file" class="profile-image-file a-model_profile_image_cropper_button" value="프로필 추가">
														</label>
													</div>
													<div class="a-model_profile_text">
														<div class="a-model_profile_text_medium">
															<span class="a-model_profile_text_medium_span1">완성도 높은 프로필은 조회수를 높일 수 있어요.</span>
															<br>
															<span class="a-model_profile_text_medium_span2">
																<div class="a-modal_profile_icon_left">
																	<img src="../assets/img/member/id_Card.png">
																</div>
																멋있는 프로필을 완성해주세요.
																<div class="a-modal_profile_icon_right">
																	<img src="../assets/img/member/id_File.png">
																</div>
															</span>
														</div>
													</div>
												</div>
												<div class="user_info_box">
													<div class="gray_box">
														<div class="gray_box_title">닉네임</div>
														<div class="gray_box_description">
															<div>
																<div class="div_relative">
																	<input type="text" placeholder="최소 3자에서 최대 16자까지 입력할 수 있어요" maxlength="16" class="enroll_Input">
																	<span class="available_length nickname_length"></span>
																	<div class="description">
																		<img src= "../assets/img/member/alert_.png" class="info_alet icons">
																		닉네임은 질문 작성시에 노출되며, 답변에는 실명으로 노출 됩니다.
																	</div>
																	<p class="error-message-nickname" style="margin: 0;"></p>
																</div>
															</div>
														</div>
														<div class="gray_box">
															<div class=gray_box_title>저금</div>
															<input type="text" class="gray_box_Input" placeholder="저축을 입력해주세요.">
														</div>
														<div class="gray_box">
															<div class=gray_box_title>목표</div>
															<input type="text" class="gray_box_Input" placeholder="목표를 입력해주세요.">
														</div>
														<div class="gray_box">
															<div class=gray_box_title>대출</div>
															<input type="text" class="gray_box_Input" placeholder="대출을 입력해주세요.">
														</div>		
														<div class="gray_box">
															<div class=gray_box_title>인사말</div>					
															<div class="enroll_Textarea_Wrapper">
																<textarea placeholder="최대 60자까지 입력할 수 있어요." class="enroll_Textarea" maxlength="60"></textarea>
																<span class="available_length hi_length">(0 / 60자)</span>
															</div>
															<div class="gray_color">
																<img src= "../assets/img/member/alert_.png" class="info_alet icons">
																더 좋은 프로필을 위해, 인사말을 입력해보세요.
															</div>
														</div>	
													</div>
												</div>
												<div class="save">
													<button class="save_Button">저장</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="a-modal_backdrop"></div>
							</div>
						</header>
						
						<!-- nav -->
						<nav class="profile_tabs">
							<div class="profile_tabs_container">
								<ui>
									<li class="profile_tabsItem">
										<a class="myProfile_Index test" href="">마이 프로필</a>
									</li>
 									<li class="profile_tabsItem">
										<a class="myProfile_Answers" href="">답변</a>
									</li>
									<li class="profile_tabsItem">
										<a class="myProfile_Questions" href="">질문</a>
									</li>
									<li class="profile_tabsItem">
										<a class="myProfile_Scraps" href="">관심 질문</a>
									</li>
								</ui>
							</div>
						</nav>
						
						
						<!-- section -->
						<section class="ptofile_section">
							
							<!-- aside -->
							<aside class="profile_aside">
								<div class="aside_user">
									<div>
										<div class="aside_user_img">
											<div class="aside_user_img_div">
												<span class="aside_user_img_div_span"></span>
													<div class="aside_user_img_div_div">
														<img src="">
													</div>
													<button class="aside_user_img_div_button">
														<img src=""> 
													</button>
												</div>
											</div>
										<div class="aside_user_nickname">
											<span>세심한 곽두철</span>
										</div>
										<div class="aside_user_body">
											<div class="aside_user_status">
												<h5>지식활동</h5>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
															질문
													</span>
													<span>0개</span>
												</div>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
														답변 
													</span>
													<span>0개</span>
												</div>
											</div>
											<div class="aside_user_status">
												<h5>획득한 반응</h5>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
														질문 좋아요
													</span>
													<span>0회</span>
												</div>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
														답변 추천
													</span>
													<span>0회</span>
												</div>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
														답변 좋아요
													</span>
													<span>0회</span>
												</div>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
														공유된 콘텐츠 (질문, 답변)
													</span>
													<span>0회</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</aside>	
							
							<!-- main -->	
								<main class="profile_main">
									<div class="profile_Index">
										<div class="profile_main_body">
											<div class="profile_Card">
												<h4 class="profile_Card_Title">저금</h4>
												<div class="profile_Card_Content">
													<div class="profile_Card_Content_noItem">
														<div class="profile_Card_Content_noItem_Inner">
															<svg xmlns="http://www.w3.org/2000/svg" class="noItem__icon icon sprite-v2" style="width:32px;height:32px;" ><use href="/_nuxt/264193f1a6a3d255efd1068dc1c304a1.svg#i-company" xlink:href="/_nuxt/264193f1a6a3d255efd1068dc1c304a1.svg#i-company" ></use></svg>
															<span class="profile_Card_Content_noItem_Inner_span">등록된 저금이 없어요</span>
														</div>
													</div>
												</div>
											</div>
											<div class="profile_Card">
												<h4 class="profile_Card_Title">목표</h4>
												<div class="profile_Card_Content">
													<div class="profile_Card_Content_noItem">
														<div class="profile_Card_Content_noItem_Inner">
															<svg xmlns="http://www.w3.org/2000/svg" class="noItem__icon icon sprite-v2" style="width:32px;height:32px;" ><use href="/_nuxt/264193f1a6a3d255efd1068dc1c304a1.svg#i-company" xlink:href="/_nuxt/264193f1a6a3d255efd1068dc1c304a1.svg#i-company" ></use></svg>
															<span class="profile_Card_Content_noItem_Inner_span">등록된 목표가 없어요</span>
														</div>
													</div>
												</div>
											</div>
											<div class="profile_Card">
												<h4 class="profile_Card_Title">현황</h4>
												<div class="profile_Card_Content">
												
													<!-- <div class="profile_Card_Content_noItem">
														<div class="profile_Card_Content_noItem_Inner">
															<svg xmlns="http://www.w3.org/2000/svg" class="noItem__icon icon sprite-v2" style="width:32px;height:32px;" ><use href="/_nuxt/264193f1a6a3d255efd1068dc1c304a1.svg#i-company" xlink:href="/_nuxt/264193f1a6a3d255efd1068dc1c304a1.svg#i-company" ></use></svg>
															<span class="profile_Card_Content_noItem_Inner_span">등록된 현황이 없어요</span>
														</div>
													</div> -->
													
													<ul class="stepperList">
														<li>
															<div class="ripple"></div>
															<div class="text-font-base-medium">저금 목표 100만원!</div>
															<div class="text-font-sub-medium">현재 금액 50만원!</div>
														</li>
													</ul>
													
																										
												</div>
											</div>
										</div>
									</div> 
								</main>					
							</section>
						</div>
					</div>	
				</div>
			</div>
		</div>
	</div>
<jsp:include page="../../header/footer-main.jsp" flush="false" />
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>



/* 모달 창 --------------------------------------------------------------- */
 
	const $modalButton = $(".modal-open");
	const $modalExit = $(".a-model_inner_header_button");
	
	
	console.log($modalButton);
	
	$modalButton.click(function(){
		$(".profile_Editor").fadeIn(300);
	});
	
	$modalExit.click(function(){
		$(".profile_Editor").fadeOut(300);
	});
	
	const $file = $("input[type=file]");
		
		$file.change(function(e){
			let file = e.target.files[0];
			let reader = new FileReader();
			reader.onload = function(e){
				let result = e.target.result;
				$(".profile-image img").attr("src", result);
			}
			
			reader.readAsDataURL(file);
		});
		
		
		/* 닉네임 정규식 -------------------------------------------------- */

		const $nickName = $("input[class=enroll_Input]");
		const $errorMessageNickName = $(".error-message-nickname");

		$nickName.on("click", function(e){
		    
		    var nicknameValue = $nickName.val();
		    var rgbNickName = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{3,16}$/;
		    

		    if(nicknameValue.length == 0){
		        $errorMessageNickName.css("display","block");
		        $errorMessageNickName.css("color","red");
		        $errorMessageNickName.text("닉네임을 입력해주세요")

		    } else if(rgbNickName.test(nicknameValue)){
		        $errorMessageNickName.css("display","none");
		        
		    } else {
		        $errorMessageNickName.css("display","block");
		        $errorMessageNickName.css("color","red");
		        $errorMessageNickName.text("닉네임을 3자 이상 16자 이하, 영어 또는 숫자 또는 한글로 입력해주세요.")
		    }
		});

		const $input1 = $("input[class=enroll_Input]");
		const $length1 = $($(".available_length")[0]);
		
		$input1.keyup(function(e) {
			let count = $(this).val().length;
			
			
			if(count == 16){
				alert("16자 이내로 작성해주세요.");
			}
			
 			$length1.text("("+ count +  " / 16자)");
		});
	

		/* 인사말 60자 ------------------------------------------------*/
		
		const $input = $(".enroll_Textarea");
		const $length = $($(".available_length")[1]);
		
		$input.keyup(function(e) {
			let count = $(this).val().length;
			
			
			if(count == 60){
				alert("60자 이내로 작성해주세요.");
			}
			
 			$length.text("("+ count +  " / 60자)");
		});




		
		
</script>
</html>