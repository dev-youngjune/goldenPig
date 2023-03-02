<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>저축게시판 목록</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/board/board_list.css">
</head>
<body>
<jsp:include page="../header/header.jsp" flush="false" />
	<div class="wrap">
		<div class="body-flex">
			<div class="content-wrap">
				<div id="content">
					<div class="tabs-wrap">
					
						<div class="tabs" style="display: flex;">
							<label  class="blue-line">
								<a class="active" href="${pageContext.request.contextPath}/boardList.board">
									<span class="bullet">저축 게시판</span>
								</a>
							</label>
							<label style="margin-left: 12px;">
								<a class="" href="${pageContext.request.contextPath}/boardList.boardFree">
									<span class="bullet color-989898">자유 게시판</span>
								</a>
							</label>
							<!-- <hr class="tabs-line"> -->
						</div>
						
					</div>
					
					<!-- ----------------------- 첫번째 게시물 ------------------------------->
					<ul></ul>
					<c:forEach var="board" items="${boards}">
	 					<div class="content-body">
								<div class="question-card">
									<article class="card">
										<div class="card-main">
											<header class="card-header">
												<a href="${pageContext.request.contextPath}/boardDetail.board">
													<h1 class="card-header-title">${board.boardTitle}</h1>
												</a>
											</header>
											<div class="card-content">
												<div class="card-footer">
													<div class="flex-justify-between">
														<div class="flex-items-center">
															<div class="card-label-icon">
																<img class="answer" src="${pageContext.request.contextPath}/static/img/board/answer.png">
																<span></span>
															</div>
															<div class="card-label-icon">
																<img class="star" src="${pageContext.request.contextPath}/static/img/board/star-icon.png">
																<span></span>
															</div>
															<div class="card-label-icon">
																<img class="heart" src="${pageContext.request.contextPath}/static/img/board/heart.png">
																<span>${board.likeCount}</span>
															</div>
															<!-- <span class="card-label-icon"><img class="answer" src="${pageContext.request.contextPath}/static/img/board/answer.png"> 1</span>
													 		<span class="card-label-icon"><img class="star" src="${pageContext.request.contextPath}/static/img/board/star.png"> 0</span>
															<span class="card-label-icon"><img class="heart" src="${pageContext.request.contextPath}/static/img/board/heart.png"> 0</span> -->
														</div>
														<span class="card-header-infomation">${board.boardRegisterDate}</span>
													</div>
												</div>
											</div>
										</div>
									</article>
								</div>
							</div>
						</c:forEach>

<%-- 					<!-- ----------------------- 두번째 게시물 -----------------------------  -->
					<div class="content-body">
						<div class="question-card">
							<article class="card">
								<div class="card-main">
									<header class="card-header">
										<a href="javascript:void(0)">
											<h1 class="card-header-title">연말정산 월세 공제 관련해서 질문이요.</h1>
										</a>
									</header>
									<div class="card-content">
										<div class="card-footer">
											<div class="flex-justify-between">
												<div class="flex-items-center">
													<div class="card-label-icon">
														<img class="answer" src="${pageContext.request.contextPath}/static/img/board/answer.png">
														<span>1</span>
													</div>
													<div class="card-label-icon">
														<img class="star" src="${pageContext.request.contextPath}/static/img/board/star-icon.png">
														<span>1</span>
													</div>
													<div class="card-label-icon">
														<img class="heart" src="${pageContext.request.contextPath}/static/img/board/heart.png">
														<span>1</span>
													</div>
													<!-- <span class="card-label-icon"><img class="answer" src="${pageContext.request.contextPath}/static/img/board/answer.png"> 1</span>
											 		<span class="card-label-icon"><img class="star" src="${pageContext.request.contextPath}/static/img/board/star.png"> 0</span>
													<span class="card-label-icon"><img class="heart" src="${pageContext.request.contextPath}/static/img/board/heart.png"> 0</span> -->
												</div>
												<span class="card-header-infomation">2023. 02. 16.
													23:06</span>
											</div>
										</div>
									</div>
								</div>
							</article>
						</div>
					</div>


					<!-- ----------------------- 세번째 게시물 -----------------------------  -->
					<div class="content-body">
						<div class="question-card">
							<article class="card">
								<div class="card-main">
									<header class="card-header">
										<a href="javascript:void(0)">
											<h1 class="card-header-title">연말정산 월세 공제 관련해서 질문이요.</h1>
										</a>
									</header>
									<div class="card-content">
										<div class="card-footer">
											<div class="flex-justify-between">
												<div class="flex-items-center">
													<div class="card-label-icon">
														<img class="answer" src="${pageContext.request.contextPath}/static/img/board/answer.png">
														<span>1</span>
													</div>
													<div class="card-label-icon">
														<img class="star" src="${pageContext.request.contextPath}/static/img/board/star-icon.png">
														<span>1</span>
													</div>
													<div class="card-label-icon">
														<img class="heart" src="${pageContext.request.contextPath}/static/img/board/heart.png">
														<span>1</span>
													</div>
													<!-- <span class="card-label-icon"><img class="answer" src="${pageContext.request.contextPath}/static/img/board/answer.png"> 1</span>
											 		<span class="card-label-icon"><img class="star" src="${pageContext.request.contextPath}/static/img/board/star.png"> 0</span>
													<span class="card-label-icon"><img class="heart" src="${pageContext.request.contextPath}/static/img/board/heart.png"> 0</span> -->
												</div>
												<span class="card-header-infomation">2023. 02. 16.
													23:06</span>
											</div>
										</div>
									</div>
								</div>
							</article>
						</div>
					</div>


					<!-- ----------------------- 네번째 게시물 -----------------------------  -->


					<div class="content-body">
						<div class="question-card">
							<article class="card">
								<div class="card-main">
									<header class="card-header">
										<a href="javascript:void(0)">
											<h1 class="card-header-title">연말정산 월세 공제 관련해서 질문이요.</h1>
										</a>
									</header>
									<div class="card-content">
										<div class="card-footer">
											<div class="flex-justify-between">
												<div class="flex-items-center">
													<div class="card-label-icon">
														<img class="answer" src="${pageContext.request.contextPath}/static/img/board/answer.png">
														<span>1</span>
													</div>
													<div class="card-label-icon">
														<img class="star" src="${pageContext.request.contextPath}/static/img/board/star-icon.png">
														<span>1</span>
													</div>
													<div class="card-label-icon">
														<img class="heart" src="${pageContext.request.contextPath}/static/img/board/heart.png">
														<span>1</span>
													</div>
													<!-- <span class="card-label-icon"><img class="answer" src="${pageContext.request.contextPath}/static/img/board/answer.png"> 1</span>
											 		<span class="card-label-icon"><img class="star" src="${pageContext.request.contextPath}/static/img/board/star.png"> 0</span>
													<span class="card-label-icon"><img class="heart" src="${pageContext.request.contextPath}/static/img/board/heart.png"> 0</span> -->
												</div>
												<span class="card-header-infomation">2023. 02. 16.
													23:06</span>
											</div>
										</div>
									</div>
								</div>
							</article>
						</div>
					</div>


					<!-- ----------------------- 다섯번째 게시물 -----------------------------  -->

					<div class="content-body">
						<div class="question-card">
							<article class="card">
								<div class="card-main">
									<header class="card-header">
										<a href="javascript:void(0)">
											<h1 class="card-header-title">연말정산 월세 공제 관련해서 질문이요.</h1>
										</a>
									</header>
									<div class="card-content">
										<div class="card-footer">
											<div class="flex-justify-between">
												<div class="flex-items-center">
													<div class="card-label-icon">
														<img class="answer" src="${pageContext.request.contextPath}/static/img/board/answer.png">
														<span>1</span>
													</div>
													<div class="card-label-icon">
														<img class="star" src="${pageContext.request.contextPath}/static/img/board/star-icon.png">
														<span>1</span>
													</div>
													<div class="card-label-icon">
														<img class="heart" src="${pageContext.request.contextPath}/static/img/board/heart.png">
														<span>1</span>
													</div>
													<!-- <span class="card-label-icon"><img class="answer" src="${pageContext.request.contextPath}/static/img/board/answer.png"> 1</span>
											 		<span class="card-label-icon"><img class="star" src="${pageContext.request.contextPath}/static/img/board/star.png"> 0</span>
													<span class="card-label-icon"><img class="heart" src="${pageContext.request.contextPath}/static/img/board/heart.png"> 0</span> -->
												</div>
												<span class="card-header-infomation">2023. 02. 16.
													23:06</span>
											</div>
										</div>
									</div>
								</div>
							</article>
						</div>
					</div>  --%>


					<!-- ----------------------- 우측 하단 버튼 -----------------------------  -->
					<aside class="right-side-bar">
						<label>
							<a type="button" href="${pageContext.request.contextPath}/boardWrite.board" class="write-board">나도 질문하기</a>
						</label>
					</aside>
				</div>
				
			</div>
		</div>
	</div>
	<jsp:include page="../header/footer-main.jsp" flush="false" />
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	let contextPath = "${pageContext.request.contextPath}";
	let page = `${page}` || null;
	let boards = `${boards}`;
</script>
<script src="${pageContext.request.contextPath}/static/js/board/board_list.js"></script>
</html>