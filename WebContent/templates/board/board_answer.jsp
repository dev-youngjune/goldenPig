<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>답변 작성</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/board/board_answer.css">
</head>
<body>
<jsp:include page="../header/header.jsp" flush="false" />
	<div class="wrap">
		<section class="container">
			<div class="row-colum">
				<header class="container-header">
					<h5 class="text-center">
						<span>답변 작성</span>
					</h5>
				</header>
				<div class="box">
					<div class="box-row">
						<form id="answer_form" action="${pageContext.request.contextPath}/boardDetail.board">
				<%-- 			<div class="profile-image-box">
								<div class="profile-image">
										<div class="file-image-path"></div>
 										<div>
											<img alt="" src="${pageContext.request.contextPath}/static/img/member/${boardInfo.memberImgPath}">
										</div> 
								</div>
<!--  								<div class="profile-image-editor">
									<label for="image">
										<div class="profile-edit-button">프로필 사진 수정</div>
									</label>
									<input type="file" id="image" style="display: none;">
								</div>  -->
							</div>
							<div class="user-info-box">
								<div class="gray-box">
									<div class="gray-title">이름</div>
									<div class="gray-box-description">${boardInfo.memberNickName}</div>
								</div>
								<div class="gray-box margin-top">
									<div class="gray-title">답변글</div>
									<div class="gray-textarea-box">
										<textarea maxlength="59" placeholder="최대 60자까지 입력할 수 있어요."></textarea>
										<span class="available-length">0 / 60자</span>
									</div>
								</div>
							</div>
							<div class="box-flex-justify-center">
								<a type="button" href="${pageContext.request.contextPath}/boardDetail.board">
									<span style="display: inline-block; margin-top: 19px; width: 100%; text-align: center;">이전</span>
								</a>
								<input type="submit" value="제출하기">
							</div> --%>
						</form>
					</div>
				</div>
			</div>	
		</section>
	</div>
<jsp:include page="../header/footer-main.jsp" flush="false" />
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	let boardInfo = ${boardInfo};
</script>
<script src="${pageContext.request.contextPath}/static/js/board/board_answer.js"></script>
</html>