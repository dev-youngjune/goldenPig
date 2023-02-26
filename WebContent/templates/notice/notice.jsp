<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="../../assets/css/notice/notice.css">
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
					</div>
					
					
					<!-- [필독] 공지사항 첫번째 글  -->
					
					<c:choose>
						<c:when test="${not empty notices and fn:length(notices) > 0}">
							<c:forEach var="notice" items="${notices}">
								<article class="card">
									<!-- 이태원 -->
									<div class="card-body">
										<!--공지사항 들어가는 링크  -->
										<a href="" class> <!--공지사항 제목  -->
											<h3>
												<!--필독 라벨  -->
												<span class="label pull-left"> <i
													class="icon icon-check tw-text-white"> <!-- before?????????? -->
												</i> 필독
												</span> [공지] <c:out value="${notice.notice.noticeTitle}"/>
											</h3>
										</a>
										<p class="cardFoot">
											<!--공지사항 작성 날짜  -->
											<span class="date text-mute word-spacing"><c:out value="${notice.noticeRegisterDate}"/></span>
										</p>
									</div>
								</article>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>



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
					
					
					<!--페이지 번호(???????)  -->
					<div class="Paginartion sm:tw-hidden tw-mt-10">
						<!-- inline-block이라고 써있는데 기능은 모르겠음  -->
						<div class="tw-inline-black">
							<button disabled="disabled" class="Pagination_pageLink -active">1</button>
							<button class="Pagination_pageLink">2</button>
							<button class="Pagination_pageLink">3</button>
							<button class="Pagination_pageLink">4</button>
							<button class="Pagination_pageLink">5</button>
							<button class="Pagination_nextLink">
								<i class="icon icon-triangle-right"> </i>
							</button>
						</div>
					</div>
					<div class="Pagination xs:tw-hidden tw-mt-10">
						<div class="tw-inline-block">
							<button disabled="disabled" class="Pagination_pageLink -active">1</button>
							<button class="Pagination_pageLink">2</button>
							<button class="Pagination_pageLink">3</button>
							<button class="Pagination_pageLink">4</button>
							<button class="Pagination_pageLink">5</button>
							<button class="Pagination_pageLink">6</button>
							<button class="Pagination_pageLink">7</button>

						</div>
					</div>
				</main>
				<!-- ::after  -->
			</div>
			<!-- ::after  -->
		</div>
	</div>
	<!-- 푸터 -->
	<jsp:include page="../header/footer-main.jsp" flush="false" />
</body>
</html>