<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지- 유저 수정</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin/adminPage-modifyMember.css">
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
					<span>회원 상세보기</span>	
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
					<div style="margin: 0 auto;width: 70%;">
						<div class="prev-button-layout">
							<div>
								<a>
									<img src="${pageContext.request.contextPath}/static/img/admin/prev_icon.png" class="prev-icon">
									<span class="prev-title">회원정보로 돌아가기</span>
								</a>
							</div>
						</div>
						<!-- 내용 섹션 -->
						<div class="info-flex">
							<section class="board-info-box-layout" style="width: 100%;">
								<div class="board-info-box">
									<div class="board-info-title-box">
										<span>회원 정보</span>
									</div>
								</div>
								<hr>
								<div class="board-info-box">
									<div class="member-img-box">
									<div class="member-img"></div>
										<div class="member-nickname-box">
											<span>벅벅코딩</span>
										</div>
									</div>
									<div class="member-info-box">
										<div class="member-info-tag-box">
											<span class="info-tag">이름<c:out value="${memberInfoChange.memberName}"/></span>
											<!-- 이름 -->
											<div class="info info-name">
												<span>${memberName}</span>
											</div>
										</div>	
										<form action="">
											<div class="member-info-tag-box">
												<span class="info-tag">이메일<c:out value="${memberInfoChange.memberEmail}"/></span>
												<!-- 이메일 -->
												<div class="info">
													<input type="text" class="member-email" name="memberEmail" value="${memberEmail}">
												</div>
											</div>
											<div class="member-info-tag-box">
												<span class="info-tag">생년월일<c:out value="${memberInfoChange.memberBirth}"/></span>
												<div class="info">
													<input type="text" class="member-birth" name="memberBirth" value="${memberBirth}">
												</div>
											</div>
											<div class="member-info-tag-box">
												<span class="info-tag">핸드폰 번호<c:out value="${memberInfoChange.memberPhoneNumber}"/></span>
												<!-- 핸드폰 번호 -->
												<div class="info">
													<input type="text" class="member-phone" name="memberPhoneNumber" value="${memberPhoneNumber}">
												</div>
											</div>
											<div class="button-box">
												<button id ="modify-button">변경</button>
											</div>
										</form>
									</div>	
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/admin/modify-member.js"></script>
</html>