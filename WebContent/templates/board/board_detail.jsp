<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 상세보기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/board/board_detail.css">
</head>
<body>
	<jsp:include page="../header/header.jsp" flush="false" />
	<div class="wrap">
		<div class="qeustion-detail">
			<section>
				<article class="article">
					<div class="card-main">
						<header class="card-header" id="card-header">
<%-- 							<h1 class="card-header-title">
								<span class="text-primary"><c:out value='${boardInfo.boardTitle}'/></span>
							</h1>
							<div class="flex-justify-between">
								<div class="flex-items-center">
									<div class="user-frofile">
										<a class="user-img">
											<!-- <span class=img></span> -->
											<img src="https://www.a-ha.io/_nuxt/img/default_profile.f2e66ea.svg">
										</a>
										<div class="user-name">
											<span class="name"><c:out value='${boardInfo.memberNickname}'/></span>
										</div>
									</div>
									<span class="card-header-register-date"><c:out value='${boardInfo.boardRegisterDate}'/></span>
								</div>
							</div> --%>
						</header>
						<div class="card-content" id="card-content">
<%-- 							<div class="editor-content">
								<p><c:out value='${boardInfo.boardContent}'/></p>
							</div> --%>
						</div>
						<footer class="card-footer">
							<div class="flex">
								<div class="buttons" id="iconButtons">
<%-- 									<div class="star-icon position">
										<img src="${pageContext.request.contextPath}/static/img/board/star-icon.png" class="absolute">
										<span class="margin-left color-blue star-text">관심질문 <span class="star-count"><c:out value='${boardInfo.boardFavoriteCount}'/></span></span>
									</div>
									<div class="like-icon position">
										<img src="${pageContext.request.contextPath}/static/img/board/like.png" class="absolute">
										<span class="margin-left like-text">좋아요 <span class="like-count"><c:out value='${boardInfo.boardLikeCount}'/></span></span>
									</div>
									<div class="reply-icon position">
										<img src="${pageContext.request.contextPath}/static/img/board/comment-icon.png" class="absolute">
										<span class="margin-left comment-text">댓글 <span class="comment-count"><c:out value='${boardInfo.boardReplyCount}'/></span></span>
									</div>	 --%>
								</div>
							</div>
							
							
							<!-- ----------------------댓글 작성---------------------- -->
							
							
							<div class="comment-wrap">
								<div class="comment-list">
									<c:choose>
										<c:when test="${empty sessionScope.memberId}">
											
										</c:when>
										<c:otherwise>
											<div class="comment-write">
												<div class="comment-flex-justify-between">
													<div class="comment-user-info">
														<div class="comment-user-image">
															<img src="https://www.a-ha.io/_nuxt/img/default_profile.f2e66ea.svg">
															<span><c:out value='${memberVO.memberNickName} || 0'></c:out></span>
														</div>
														<div class="comment-input-button">
															<input type="button" value="댓글 등록">
														</div>
													</div>
												</div>
											</div>
											<div class="comment-editor">
												<textarea rows="6" cols="6" placeholder="댓글을 입력해주세요."></textarea>
											</div>
										</c:otherwise>
									</c:choose>
									
									<!-- ----------------------댓글 목록---------------------- -->
									
									
									<div class="comment-list-list" id="commentLists">
									
										<!-- <div class="comment-list-padding-top">
											<div class="comment-list-padding-left">
												<div class="comment-list-flex-justify-between">
													<div class="comment-list-user-info-flex">
														<div class="comment-user-image">
															<img src="https://www.a-ha.io/_nuxt/img/default_profile.f2e66ea.svg">
															<span>상냥한너구리168</span>
														</div>
													</div>
													<div class="comment-list-buttons">
														<input type="button" value="수정">
														<span>|</span>
														<input type="button" value="삭제">
													</div>
												</div>
												<div class="margin-top-left">
													<p class="comment-list-reply">오 감사합니다 !</p>
												</div>
												<span class="card-header-register-date margin-left-32px">2023. 02. 18. 09:53</span>
											</div>
										</div> -->
									
									</div>
								</div>
							</div>
						</footer>
					</div>
				</article>
			</section>
			
			
			<!-- ----------------------------- 답변 ----------------------------- -->
			
			<c:choose>
				<c:when test="${boardType != 'free'}">
					<div class="answer-wrap">
						<div class="answer-button">
							<form>
								<input type="button" value="답변하기" onclick="location.href='${pageContext.request.contextPath}/boardAnswer.board?boardId=${boardId}'">
							</form>
						</div>
						<h4 class="answer-title">총 1개의 답변이 있어요.</h4>
						<div class="asnwer-content-wrap">
							<article class="article">
								<div class="card-main">
									<header class="card-header">
										<div class="answer-user-image">
											<div class="user-image-wrap">
												<a class="answer-image">
													<span class=img></span>
													<img src="https://media.a-ha.io/aha-qna/users/kmrjG9vnAZYCaygPbjtZK">
												</a>
											</div>
											<div class="user-name">
												<span class="anwer-name">송윤경 세무사</span>
												<img src="https://www.a-ha.io/_nuxt/img/badge_expert.f392019.svg">
											</div>
										</div>
									</header>
									<div class="card-content">
										<div class="editor-content">
											<p>
												지금 현재 직장인이고 연말정산 회사에 서류제출 하였습니다....
												작년에 투잡으로  500만원정도 소득이 발생했습니다..  그러면 제가 따로 5월에 신고 해야하나요?
											</p>
											<span class="card-header-register-date">2023. 02. 18. 09:53</span>
										</div>
									</div>
									<footer class="card-footer">
										<div class="flex">
											<div class="buttons">
												<div class="like-icon position">
													<img src="${pageContext.request.contextPath}/static/img/board/like.png" class="absolute">
													<span class="margin-left">좋아요 <span class="like-count">0</span></span>
												</div>
												<div class="reply-icon position">
													<img src="${pageContext.request.contextPath}/static/img/board/comment-icon.png" class="absolute">
													<span class="margin-left">댓글 <span>0</span></span>
												</div>	
											</div>
										</div>
										
										
										<!-- ----------------------댓글 작성---------------------- -->
										
										
										<div class="comment-wrap" style="display: none;">
											<div class="comment-list" id="commentList">
												<div class="comment-write">
													<div class="comment-flex-justify-between">
														<div class="comment-user-info">
															<div class="comment-user-image">
																<img src="https://www.a-ha.io/_nuxt/img/default_profile.f2e66ea.svg">
																<span>상냥한너구리168</span>
															</div>
															<div class="comment-input-button">
																<input type="button" value="댓글 등록">
															</div>
														</div>
													</div>
												</div>
												<div class="comment-editor">
													<textarea rows="6" cols="6" placeholder="댓글을 입력해주세요."></textarea>
												</div>
												
												
												<!-- ----------------------댓글 목록---------------------- -->
												
												
												<div class="comment-list-list">
<!-- 													<div class="comment-list-padding-top">
														<div class="comment-list-padding-left">
															<div class="comment-list-flex-justify-between">
																<div class="comment-list-user-info-flex">
																	<div class="comment-user-image">
																		<img src="https://www.a-ha.io/_nuxt/img/default_profile.f2e66ea.svg">
																		<span>상냥한너구리168</span>
																	</div>
																</div>
																<div class="comment-list-buttons">
																	<input type="button" value="수정">
																	<span>|</span>
																	<input type="button" value="삭제">
																</div>
															</div>
															<div class="margin-top-left">
																<p class="comment-list-reply">오 감사합니다 !</p>
															</div>
															<span class="card-header-register-date margin-left-32px">2023. 02. 18. 09:53</span>
														</div>
													</div> -->
												</div>
												
												
											</div>
										</div>
									</footer>
								</div>
							</article>
						</div>
					</div>
				</c:when>
				
				<%-- boardType=='free' --%>
				<c:otherwise></c:otherwise>
				
			</c:choose>
		</div>
	</div>
<jsp:include page="../header/footer-main.jsp" flush="false" />
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	let replyDTOs = `${replyDTOs}`;
	let memberVO = `${memberVO}`;
	let boardInfo = `${boardInfo}`;
	let isLogin = `${!(empty sessionScope.memberId)}`;
	let memberId = `${sessioScope.memberId}`;
	let boardId = JSON.parse(boardInfo).boardId;
	let isBoardFree = `${boardType == 'free'}`;
	let likeInfo = `${likeInfo}`;
	console.log("login : " + isLogin);
	console.log("isFree : " + isBoardFree);
	console.log("memberId : " + memberId);
	console.log("boardId : " + boardId);
</script>
<script src="${pageContext.request.contextPath}/static/js/board/board_detail_free.js"></script>
<script src="${pageContext.request.contextPath}/static/js/board/board_detail_saving.js"></script>
<script src="${pageContext.request.contextPath}/static/js/board/board_detail.js"></script>
<script src="${pageContext.request.contextPath}/static/js/board/board_likeOk_Free.js"></script>
</html>


















