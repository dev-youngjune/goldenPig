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
								<button class="header_container_button -primary">프로필 편집</button>
								<button class="header_container_button buttonShare">
									<i class="icon icon=share-fill"></i>
								</button>
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
													<svg data-v-70a8efa8="" xmlns="http://www.w3.org/2000/svg" class="icon sprite-icons"><use data-v-70a8efa8="" href="https://www.a-ha.io/_nuxt/e56a5e482f8c842b09cf0e958d429c23.svg#i-cancel" xlink:href="https://www.a-ha.io/_nuxt/e56a5e482f8c842b09cf0e958d429c23.svg#i-cancel"></use></svg>
												</button>
											</div>
											<div class="a-model_profile_box row">
												<div class="a-model_profile_image_box tw-mb-5">
													<span class="a-model_profile_image_span"></span>
													<div class="a-model_profile_image_cropper">
														<button class="a-model_profile_image_cropper_button">프로필 사진 추가</button>
													</div>
													<div class="a-model_profile_text">
														<div class="a-model_profile_text_medium">
															<span class="a-model_profile_text_medium_span1">완성도 높은 프로필은 조회수를 높일 수 있어요.</span>
															<br>
															<span class="a-model_profile_text_medium_span2">
																<div class="a-modal_profile_icon_left">
																	<img src="../assets/img/member/id_Card.png">
																	멋있는 프로필을 완성해 주세요
																</div>
																<div class="a-modal_profile_icon_right">
																	<img src="../assets/img/member/id_File.png">
																</div>
															</span>
														</div>
													</div>
												</div>
												<div class="user_info_box">
													<div class="gray_box">
														
													</div>
												</div>
												<div class="tw-flex tw-justify-center tw-mt-6"></div>
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
													<div class="profile_Card_Content_noItem">
														<div class="profile_Card_Content_noItem_Inner">
															<svg xmlns="http://www.w3.org/2000/svg" class="noItem__icon icon sprite-v2" style="width:32px;height:32px;" ><use href="/_nuxt/264193f1a6a3d255efd1068dc1c304a1.svg#i-company" xlink:href="/_nuxt/264193f1a6a3d255efd1068dc1c304a1.svg#i-company" ></use></svg>
															<span class="profile_Card_Content_noItem_Inner_span">등록된 현황이 없어요</span>
														</div>
													</div>
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
</body>
</html>