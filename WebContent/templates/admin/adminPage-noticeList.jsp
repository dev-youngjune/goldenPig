<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지-공지 사항 목록</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin/adminPage-boardList.css">
</head>
<body>
	<div>
		<div class="info-title-box info-title-box-flex">
			<div class="logo-box-layout">
				<div class="logo-box">
					<img src="${pageContext.request.contextPath}/static/img/admin/logo_icon.png">
				</div>
				<div class="logo-title">
					<span>골든 피그</span>
				</div>
			</div>
			<div>
				<div class="select-name">
					<span>공지사항 관리</span>	
				</div>
			</div>
		</div>
		<div class="wrap"> 
		
			<!-- 사이드 바 -->
			<div id="side-bar">
				<jsp:include page="sidemenu.jsp" flush="false" />
			</div>
			<!-- 사이드 바 끝-->
		
			<div class="container">
				<div class="container-margin">
					<!-- 헤더 -->
					<div class="update-button-flex">
						<div class="delete-box-layout ">
								<div class="delete-box">
									<button class="register-button">
										<a href="javascript:location.href='${pageContext.request.contextPath}/adminNoticeWrite.admin?page=${page}'">공지사항 등록</a>
									</button>
								</div>
						</div>
						<div class="delete-box-layout">
								<div class="delete-box">
									<button class="delete-button">선택 게시물 삭제</button>
								</div>
						</div>
					</div>					
					<!-- 내용 섹션 -->
					<section class="board-info-box-layout">
						
						<div class="board-info-box">
							<div class="board-info-title-box">
								<span>공지사항 목록</span>
							</div>
							
							<div class="info-table">
								<table>
									<thead>
										<tr>
											<th class="checkbox-line">
												<input type="checkbox" id="allSelect">
											</th>
											<th>No</th>
											<th>제목</th>
											<th>작성 날짜</th>
											<th>수정 날짜</th>
											<th>
												<!-- 버튼 넣을 칸 이라서 빈공간으로 -->
											</th>
										</tr>
									</thead>
									
										<c:forEach var="adminNotice" items="${adminNotices}">
											<tr>
												<td class="checkbox-line">
													<input type="checkbox" name="check" value="${adminNotice.noticeId}">
												</td>
												<td class="noticeId"><c:out value="${adminNotice.noticeId}"/></td>
												<td>
													<a href="javascript:location.href='${pageContext.request.contextPath}/adminNoticeDetail.admin?noticeId=${adminNotice.noticeId}&page=${page}'">
														<c:out value="${adminNotice.noticeTitle}"/>
													</a>
												</td>
												<td><c:out value="${adminNotice.noticeRegisterDate}"/></td>
												<td><c:out value="${adminNotice.noticeUpdateDate}"/></td>
												<td class="modify-button">
													<a href="javascript:location.href='${pageContext.request.contextPath}/adminNoticeModify.admin?noticeId=${adminNotice.noticeId}&page=${page}'">수정</a>
												</td>
											</tr>
										</c:forEach>
										
								</table>
							</div>
						</div>
					</section>
					
					<!-- 페이지 버튼 -->
					
					<section id="content-wrap">
		                <ul></ul>
		                <div id="paging-wrap">
		                	<c:if test="${prev}">
			                    <a href="javascript:location.href='${pageContext.request.contextPath}/adminNoticeList.admin?page=${startPage - 1}'" class="paging paging-move"><img src="${pageContext.request.contextPath}/static/images/prev.png" width="15px"></a>
		                	</c:if>
		                    <c:forEach var="i" begin="${startPage}" end="${endPage}">
		                    	<c:choose>
		                    		<c:when test="${i eq page}">
					                    <a href="javascript:void(0)" class="paging paging-checked"><c:out value="${i}"/></a>
		                    		</c:when>
		                    		<c:otherwise>
					                    <a href="javascript:location.href='${pageContext.request.contextPath}/adminNoticeList.admin?page=${i}'" class="paging"><c:out value="${i}"/></a>
		                    		</c:otherwise>
		                    	</c:choose>
		                    </c:forEach>
		                    <c:if test="${next}">
		                    	<a href="javascript:location.href='${pageContext.request.contextPath}/adminNoticeList.admin?page=${endPage + 1}'" class="paging paging-move"><img src="${pageContext.request.contextPath}/static/images/next.png" width="15px"></a>
		                    </c:if>
		                    <div></div>
		                </div>
	            	</section>
	            	
	            	
					<%-- <div class="page-button-box-layout">
						<div class="page-button-box">
							<!-- 페이지 번호 -->
							<div class="">
								<div class="page-button-margin">
									<div>
										<img src="${pageContext.request.contextPath}/static/img/admin/left_icon.png" class="left-button">
									</div>
								</div>
							</div>
							<div class="page-button-active page-button">
								<div class="page-button-margin">
									<div>
										<span>1</span>
									</div>
								</div>
							</div>
							<div class="page-button">
								<div class="page-button-margin">
									<div>
										<span>2</span>
									</div>
								</div>
							</div>
							<div class="page-button">
								<div class="page-button-margin">
									<div>
										<span>3</span>
									</div>
								</div>
							</div>
							<div class="">
								<div class="page-button-margin">
									<div>
										<img src="${pageContext.request.contextPath}/static/img/admin/right_icon.png" class="right-button">
									</div>
								</div>
							</div>
						</div>
					</div> --%>
					<!-- 페이지 버튼 끝 -->
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>let contextPath = "${pageContext.request.contextPath}"</script>
<script src="${pageContext.request.contextPath}/static/js/admin/page.js"></script>
<script src="${pageContext.request.contextPath}/static/js/admin/checkbox.js"></script>
</html>