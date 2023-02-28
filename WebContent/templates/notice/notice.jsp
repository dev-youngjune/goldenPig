<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/notice/notice.css">
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="../header/header.jsp" flush="false" />
	<div class="size-controll"
		style="background-color: rgb(250, 250, 250);">
		<div class="container no-padding-xs">
			<!-- style="height: auto !important;" -->
			<!-- ::before  -->
			<div class="row" style="height: auto !important;">
				<!-- ::before -->
				<!-- 사이드 베너 -->
				<aside></aside>
				<!-- 페이지 전체  -->
				<main class="all-col">
					<!-- 공지사항 쪽  -->
					<div class="card card-header tw-bg-white">
						<h4 class="title">공지사항</h4>
						<span class="notice-total"><c:out value="${total}"/>개</span>
					</div>
					
					
					<!-- [필독] 공지사항 첫번째 글  -->
					
					<c:forEach var="notice" items="${notices}">
						<article class="card">
							<!-- 이태원 -->
							<div class="card-body">
								<!--공지사항 들어가는 링크  -->
								<a href="javascript:location.href='/noticeDetailOk.notice?noticeId=${notice.noticeId}'"> <!--공지사항 제목  -->
									<h3 class="line-height">
										<!--필독 라벨  -->
										<span class="label pull-left"> <i
											class="icon icon-check tw-text-white"> <!-- before?????????? -->
										</i> 필독
										</span> [공지] <c:out value="${notice.noticeTitle}"/>
									</h3>
								</a>
								<p class="cardFoot">
									<!--공지사항 작성 날짜  -->
									<span class="date text-mute word-spacing">${notice.noticeRegisterDate}</span>
								</p>
							</div>
						</article>
					</c:forEach>
					
					
					<!---------------------------- 필독 공지사항 끝 ----------------------------------->


					<!-- 공지사항 여덟번째 글  -->
					<!-- <article class="card">
						<div class="card-body">
							공지사항 들어가는 링크 
							<a href=""> 공지사항 제목 
								<h3>[공지] 아하토큰 일일 최대 출금 수량 변경 안내(재수정)</h3>
							</a>
							<p class="cardFoot">
								공지사항 작성 날짜 
								<span class="date txt-mute word-spacing"> 2023.02.13 </span>
							</p>
						</div>
					</article> -->
					
					<section id="content-wrap">
		                <ul></ul>
		                <div id="paging-wrap">
		                	<c:if test="${prev}">
			                    <a href="javascript:location.href='/noticeListOk.notice?page=${startPage - 1}'" class="paging paging-move"><img src="${pageContext.request.contextPath}/static/images/prev.png" width="15px"></a>
		                	</c:if>
		                    <c:forEach var="i" begin="${startPage}" end="${endPage}">
		                    	<c:choose>
		                    		<c:when test="${i eq page}">
					                    <a href="javascript:void(0)" class="paging paging-checked"><c:out value="${i}"/></a>
		                    		</c:when>
		                    		<c:otherwise>
					                    <a href="javascript:location.href='/noticeListOk.notice?page=${i}'" class="paging"><c:out value="${i}"/></a>
		                    		</c:otherwise>
		                    	</c:choose>
		                    </c:forEach>
		                    <c:if test="${next}">
		                    	<a href="javascript:location.href='/noticeListOk.notice?page=${endPage + 1}'" class="paging paging-move"><img src="${pageContext.request.contextPath}/static/images/next.png" width="15px"></a>
		                    </c:if>
		                    <div></div>
		                </div>
	            	</section>
            
				</main>
				<!-- ::after  -->
			</div>
			<!-- ::after  -->
		</div>
	</div>
	<!-- 푸터 -->
	<jsp:include page="../header/footer-main.jsp" flush="false" />
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/notice/notice.js"></script>
</html>