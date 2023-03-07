<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/mypage.css">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon/fevicon.png">
</head>
<body>
<jsp:include page="../header/header.jsp" flush="false"/>
	<div id="fullScreen">
		<div id="wrap">
			<div>
				<div class="layout">
					<div class="profile_page">
						<header class="profile_Header">
							<div class="header_container">
								<button class="header_container_button -dark">
									<img src="${pageContext.request.contextPath}/static/img/member/camera_icon.png">
									커버 사진 수정
								</button>
								<button class="header_container_button -primary modal-open">프로필 편집</button>
							</div>
							<div class="profile_Editor a-modal">
								<div class="scroll -open">
									<div class="a-modal_inner">
										<div class="a-modal_innerBody">
											<button class="close_button">
											</button>
											<div class="a-model_inner_header">
												<span >프로필 편집</span>
												<button class="a-model_inner_header_button">
													<img src="${pageContext.request.contextPath}/static/img/member/X.png" class="icons">
												</button>
											</div>
											<div class="a-model_profile_box row">
												<form>
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
																		<img src="${pageContext.request.contextPath}/static/img/member/id_Card.png">
																	</div>
																	멋있는 프로필을 완성해주세요.
																	<div class="a-modal_profile_icon_right">
																		<img src="${pageContext.request.contextPath}/static/img/member/id_File.png">
																	</div>
																</span>
															</div>
														</div>
													</div>
													<div class="user_info_box">
														<div class="gray_box">
															<div class="gray_box_title"> ${modalProfile.memberNickName} </div>
															<div class="gray_box_description">
																<div>
																	<div class="div_relative">
																		<input type="text" name="newNickName" placeholder="최소 3자에서 최대 16자까지 입력할 수 있어요" maxlength="16" class="enroll_Input">
																		<span class="available_length nickname_length"></span>
																		<div class="description">
																			<img src= "${pageContext.request.contextPath}/static/img/member/alert_.png" class="info_alet icons">
																			닉네임은 질문 작성시에 노출되며, 답변에는 실명으로 노출 됩니다.
																		</div>
																		<p class="error-message-nickname" style="margin: 0;"></p>
																	</div>
																</div>
															</div>
															<div class="gray_box">
																<div class=gray_box_title>목표 금액</div>
																<input type="text" class="gray_box_Input" placeholder="목표 금액을 입력해주세요." name="newMoneyTarget">
															</div>
															<div class="gray_box">
																<div class=gray_box_title>현재 금액</div>
																<input type="text" class="gray_box_Input" placeholder="현재 금액을 입력해주세요." name="newMoneyAmount">
															</div>
															<div class="gray_box">
																<div class=gray_box_title>목표 시작날짜</div>
																<input type="text" class="gray_box_Input" placeholder="목표 시작일을 입력해주세요." name="newMoneyRegister">
															</div>		
															<div class="gray_box">
																<div class=gray_box_title>목표 마감날짜</div>
																<input type="text" class="gray_box_Input" placeholder="목표 마감일을 입력해주세요." name="newMoneyExpiry">
															</div>		
															<div class="gray_box">
																<div class=gray_box_title>인사말</div>					
																<div class="enroll_Textarea_Wrapper">
																	<textarea placeholder="최대 60자까지 입력할 수 있어요." class="enroll_Textarea" maxlength="60" name="newGreeting"><%-- ${modalSelect.memberGreeting} --%></textarea>
																	<span class="available_length hi_length">(0 / 60자)</span>
																</div>
																<div class="gray_color">
																	<img src= "${pageContext.request.contextPath}/static/img/member/alert_.png" class="info_alet icons">
																	더 좋은 프로필을 위해, 인사말을 입력해보세요.
																</div>
															</div>	
														</div>
													</div>
													<div>
														<div class="save">
															<button class="save_Button">저장</button>
														</div>
													</div>
												</form>
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
										<a class="myProfile_Index test" href="javascript:location.href='${pageContext.request.contextPath}/mypage.mypage'">마이 프로필</a>
									</li>
									<li class="profile_tabsItem">
										<a class="myProfile_Questions" href="javascript:location.href='${pageContext.request.contextPath}/qustions.mypage'">질문</a>
									</li>
 									<li class="profile_tabsItem">
										<a class="myProfile_Answers" href="javascript:location.href='${pageContext.request.contextPath}/answers.mypage'">답변</a>
									</li>
									<li class="profile_tabsItem">
										<a class="myProfile_Scraps" href="javascript:location.href='${pageContext.request.contextPath}/scraps.mypage'">관심 질문</a>
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
											<span> ${memberSide.memberNickName} </span>
										</div>
										<p id="hihorse"> ${memberSide.memberGreeting} </p>
										<div class="aside_user_body">
											<div class="aside_user_status">
												<h5>나의활동</h5>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
															질문
													</span>
													<span>${memberSide.savingWriteCount} 개</span>
												</div>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
															답변
													</span>
													<span>${memberSide.answerWriteCount} 개</span>
												</div>
											</div>
											<div class="aside_user_status">
												<h5>획득한 반응</h5>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
														질문 좋아요
													</span>
													<span>${memberSide.boardLikeCountTotal} 회</span>
												</div>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
														답변 좋아요
													</span>
													<span>${memberSide.answerLikeCountTotal} 회</span>
												</div>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
														관심 질문
													</span>
													<span>${memberSide.favoriteTotal} 회</span>	
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
												<h4 class="profile_Card_Title">목표 금액</h4>
												<div class="profile_Card_Content">
												
												<c:choose>
													<c:when test='${empty money.moneyAmount}'>
													<div class="profile_Card_Content_noItem">
														<div class="profile_Card_Content_noItem_Inner">
															<img src="">
															<span class="profile_Card_Content_noItem_Inner_span">등록된 목표 금액이 없어요</span>
														</div>
													</div>
													</c:when>
													
													<c:otherwise>	
													<ul class="stepperList">
														<li>
															<div class="ripple"></div>
															<div class="text-font-base-medium">목표 금액 ${money.moneyTarget} 원!!</div>
														</li>
													</ul>
													</c:otherwise>	
												</c:choose>	
												</div>
											</div>
												
											<div class="profile_Card">
												<h4 class="profile_Card_Title">현재 금액</h4>
												<div class="profile_Card_Content">
												
												<c:choose>
													<c:when test='${empty money.moneyTarget}'>
													<div class="profile_Card_Content_noItem">
														<div class="profile_Card_Content_noItem_Inner">
															<img src="">
															<span class="profile_Card_Content_noItem_Inner_span">등록된 현재 금액이 없어요</span>
														</div> 
													</div>
													</c:when>
													<c:otherwise> 
													<ul class="stepperList">
														<li>
															<div class="ripple"></div>
															<div class="text-font-base-medium">현재 금액 ${money.moneyAmount} 원!!</div>
														</li>
													</ul>
													</c:otherwise>
												</c:choose> 
												</div>
											</div>
											
											<div class="profile_Card">
												<h4 class="profile_Card_Title">목표기간</h4>
												<div class="profile_Card_Content">
												
												<c:choose>
													<c:when test='${empty money.moneyExpiryDate}'>
													<div class="profile_Card_Content_noItem">
														<div class="profile_Card_Content_noItem_Inner">
															<img src="">
															<span class="profile_Card_Content_noItem_Inner_span">등록된 목표 기간이 없어요</span>
														</div>
													</div>
													</c:when>
													
													<c:otherwise>
													<ul class="stepperList">
														<li>
															<div class="ripple"></div>
															<div class="text-font-base-medium"> ${money.moneyRegisterDate} ~ ${money.moneyExpiryDate} </div>
														</li>
													</ul>
													</c:otherwise>	
												</c:choose>
													
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
<jsp:include page="../header/footer-main.jsp" flush="false" />
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