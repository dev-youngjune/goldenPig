<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관심 질문 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/myPageScraps.css">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon/fevicon.png">
</head>
<body>
<jsp:include page="../header/header.jsp" flush="false" />
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
								<!-- <button class="header_container_button -primary">지식프로필 편집</button> -->
								<!-- <button class="header_container_button buttonShare">
									<i class="icon icon=share-fill"></i>
								</button> -->
							</div>
							<div></div>
						</header>

						<!-- nav -->
						<nav class="profile_tabs">
							<div class="profile_tabs_container">
								<ui>
									<li class="profile_tabsItem">
										<a class="myProfile_Index test" href="">마이 프로필</a>
									</li>
									<li class="profile_tabsItem">
										<a class="myProfile_Questions" href="">질문</a>
									</li>
 									<li class="profile_tabsItem">
										<a class="myProfile_Answers" href="">답변</a>
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
											<span>세심한 곽두철씨</span>
										</div>
										<p id="hihorse">열심히 활동하는 세심한 곽두철입니다. 
										여러분들 반가워요!</p>
										<div class="aside_user_body">
											<div class="aside_user_status">
												<h5>나의활동</h5>
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
														답변 좋아요
													</span>
													<span>0회</span>
												</div>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
														관심 질문
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
								<div class="profile_mian_div">
								
								<!-- 목록에 없을 때 나올 곳 -->
									<div class="no_main">
										<div class="no_main_div">
											<div class="no_main_inner">
												<span> 등록된 답변이 없습니다.</span>
											</div>
										</div>
									</div>
								
								<!-- 목록이 있을때 나올 곳 -->
							<%-- 	<article class="article_">
									<div class="card-main">
										<header class="card-header">
											<h1 class="card-header-title">
												<span class="text-primary">Q.</span> 직장인 투잡 연말정산 어떻게 하나요?
											</h1>
											<div class="flex-justify-between">
												<div class="flex-items-center">
													<div class="user-frofile">
														<a class="user-img"> <!-- <span class=img></span> -->
															<img src="https://www.a-ha.io/_nuxt/img/default_profile.f2e66ea.svg">
														</a>
														<div class="user-name">
															<span class="name">세심한곽두철</span>
														</div>
													</div>
													<span class="card-header-register-date">2023. 02.
														18. 09:53</span>
												</div>
											</div>
										</header>
										<div class="card-content">
											<div class="editor-content">
												<p>지금 현재 직장인이고 연말정산 회사에 서류제출 하였습니다.... 작년에 투잡으로 500만원정도
													소득이 발생했습니다.. 그러면 제가 따로 5월에 신고 해야하나요?</p>
											</div>
										</div>
										<footer class="card-footer">
											<div class="footer_div">
												<div class="star-icon position">
													<img src="../assets/img/board/star-class="absolute"> 
														<span
														class="margin-left color-blue star-text">관심질문 <span
														class="star-count">0</span></span>
												</div>				 
												<div>
													<button class="interest_Button">
														<img src="${pageContext.request.contextPath}/static/img/board/star-icon.png" class="scrpas-star-icon">
														관심질문
														<span class="count-wrapper">1</span>
													</button>
												</div>
											</div>
										</footer>
									</div>
								</article> --%>
								
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
</html>