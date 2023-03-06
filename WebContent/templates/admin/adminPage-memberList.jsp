<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지- 회원 정보 목록</title>
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
					<span>회원정보 관리</span>	
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
					<div class="delete-box-layout">
<!-- 							<div class="delete-box">
								<button class="delete-button">선택 게시물 삭제</button>
							</div> -->
					</div>
					
					<!-- 내용 섹션 -->
					<section class="board-info-box-layout">
						
						<div class="board-info-box">
							<div class="board-info-title-box">
								<span>회원정보 목록</span>
							</div>
							
							<div class="info-table">
								<table>
									<thead>
										<tr>
											<th class="checkbox-line">
												<input type="checkbox" id="allSelect">
											</th>
											<th>No</th>
											<th>이메일</th>
											<th>닉네임</th>
											<th>핸드폰 번호</th>
											<th>가입 날짜</th>
										</tr>
									</thead>
									<c:forEach var="member" items="${members}">
										<tr>
											<td class="checkbox-line">
												<input type="checkbox" name="check">
											</td>
											<td><c:out value="${member.memberId}"/></td> <!-- No. -->
											<td>
												<a href="adminPage-member.jsp"><c:out value="${member.memberEmail}"/></a> <!-- 디테일 컨트롤러 제작하고 연결  -->
											</td>
											<td><c:out value="${member.memberNickName}"/></td>
											<td><c:out value="${member.memberPhoneNumber}"/></td>
											<td><c:out value="${member.memberBirth}"/></td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
					</section><!-- 폼태그 -->
					
					<!-- 페이지 버튼 -->
					<div class="page-button-box-layout">
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
					</div>
					<!-- 페이지 버튼 끝 -->
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/admin/checkbox.js"></script>
<script src="${pageContext.request.contextPath}/static/js/admin/page.js"></script>
</html>