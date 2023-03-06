<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>             
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>답변 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/myPageAnswers.css">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon/fevicon.png">
</head>
<body>
<jsp:include page="../header/header.jsp" flush="false" />
	<div id="fullScreen">
		<div id="wrap">
			<div>
			<jsp:include page="../header/header.jsp" flush="false" />
				<div class="layout">
					<div class="profile_page">
						<header class="profile_Header">
							<div class="header_container">
								<button class="header_container_button -dark">
									<img src="${pageContext.request.contextPath}/static/img/member/camera_icon.png">
									커버 사진 수정
								</button>
							<!-- 	<button class="header_container_button -primary">지식프로필
									편집</button> -->
							<!-- 	<button class="header_container_button buttonShare">
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
											<span>${memberSide.memberNickName}</span>
										</div>
										<p id="hihorse">${memberSide.memberGreeting}</p>
										<div class="aside_user_body">
											<div class="aside_user_status">
												<h5>나의활동</h5>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
															질문
													</span>
													<span>${memberSide.savingWriteCount}개</span>
												</div>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
															답변
													</span>
													<span>${memberSide.answerWriteCount}개</span>
												</div>
											</div>
											<div class="aside_user_status">
												<h5>획득한 반응</h5>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
														질문 좋아요
													</span>
													<span>${memberSide.savingLikeCount}회</span>
												</div>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
														답변 좋아요
													</span>
													<span>${memberSide.answerLikeCount}회</span>
												</div>
												<div class="profile_user_status_item">
													<span class="profile_user_status_item_span">
														<img src="">
														관심 질문
													</span>
													<span>${memberSide.favoriteTotal}회</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</aside>	

							<!-- main -->
							<main class="profile_main">
								<div class="profile_mian_div">
								
								<c:choose>
								<c:when test='${empty answerList.answerTitle}'>
									
									<!-- 목록에 없을 때 나올 곳 -->
									<div class="no_main">
											<div class="no_main_div">
												<div class="no_main_inner">
													<span> 등록된 답변이 없습니다.</span>
												</div>
											</div>
										</div>
									</c:when>
									<c:otherwise>	
									
									<c:forEach var="answerList" items="${answerList}">
									<!-- 목록이 있을때 나올 곳 -->
									<div class="">
											<article class="article_">
												<div class="card-main">
													<header class="card-header">
														<div>
															<div class="header_div_div">
																<h1 class="card-header-title">
																	<span class="text-primary">Q.<c:out value="${answerList.answerTitle}"/></span> 
																</h1>
															</div>
														</div>
													</header>
													<div class="card-content">
														<div class="editor-content">
															<p><c:out value="${answerList.answerContent}"/></p>
														</div>
													</div>
													<span class="card-header-register-date"><c:out value="${answerList.answerRegisterDate}"/></span>
												</div>
										</article>
									</div>
								</c:forEach>
								</c:otherwise>	
								</c:choose>
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