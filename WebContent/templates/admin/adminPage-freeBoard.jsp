<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지- 게시판 상세보기</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin/adminPage-board.css">
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
					<span>게시판 상세보기</span>	
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
					<div class="prev-button-layout">
						<div>
							<a href="javascript:location.href='${pageContext.request.contextPath}/adminFreeBoardList.admin?page=${page}'">
								<img src="${pageContext.request.contextPath}/static/img/admin/prev_icon.png" class="prev-icon">
								<span class="prev-title">리스트로 돌아가기</span>
							</a>
						</div>
					</div>
					
					<!-- 내용 섹션 -->
					<section class="board-info-box-layout">
						
						<div class="board-info-box">
							<div class="board-info-title-box">
								<span>게시판 상세보기</span>
							</div>
							<hr>
							<div class="info-table">
								<div class="info-member">
										<span class="span-bold">제목 :</span> 
										<!-- 제목  -->
										<span><c:out value="${board.boardTitle}"/></span>
								</div>
								<div class="info-member">
									<span class="span-bold">작성자 :</span>
									<!-- 작성자 명  -->
									<span><c:out value="${board.memberName}"/></span>
								</div>
								<div class="info-member">
									<span class="span-bold">작성 날짜 :</span>
									<!-- 작성 날짜  -->
									<span><c:out value="${board.boardRegisterDate}"/></span>
								</div>
							</div>
							<hr>
							<div class="info-table">
								<div>
									<!-- 게시판 내용 -->
									<c:out value="${board.boardContent}"/>
								</div>
							</div>	
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
</html>