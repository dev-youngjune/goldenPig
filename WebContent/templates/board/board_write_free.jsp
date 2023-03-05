<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/board/board_write.css">
</head>
<body>
<jsp:include page="../header/header.jsp" flush="false" />
	<div class="wrap">
		<div class="page-container">
			<div class="container">
				<div class="flex-justify-center">
					<div class="main">
						<div class="row">
							<form action="${pageContext.request.contextPath}/boardWriteOk.boardFree" name="writeForm">
								<div class="card">
									<div class="qeustion-editor">
										<div class="question-title-container">
											<div class="question-title">
												<div class="flex">
													<span class="text-primary">Q.</span> 
													<input type="text" class="input-text" name="title" maxlength="79" placeholder="물음표로 끝나는 제목을 입력해보세요.">
													<span class="title-number-check">(0/80자)</span>
												</div>
											</div>
										</div>
										<div class="question-body-container">
											<div class="qeusetion-body">
												<div class="qeustion-content">
													<div class="question-padding">
														<textarea name="content" placeholder="연말정산에 질문을 해주세요."></textarea>
														<div class="file-image-wrap">
															<div class="file-image-path">
																<span>X</span>
															<div class="file-image-name"></div>
															</div>
														</div>
														
														<!-- --------------------메뉴 바-------------------- -->
														
														
														<div class="upload-image-wrap">
															<div class="menubar-button bold-button">
																<label for="bold">
																	<img src="${pageContext.request.contextPath}/static/img/board/bold-icon.png">
																</label>
																<input type="" id="bold" style="display: none;">
															</div>
															<div class="menubar-button">
																<label for="unlist">
																	<img src="${pageContext.request.contextPath}/static/img/board/unlist-icon.png">
																</label>
																<input type="" id="unlist" style="display: none;">
															</div>
															<div class="menubar-button">
																<label for="orlist">
																	<img src="${pageContext.request.contextPath}/static/img/board/orlist-icon.png">
																</label>
																<input type="" id="orlist" style="display: none;">
															</div>
															<div class="menubar-button">
																<label for="file">
																	<img src="${pageContext.request.contextPath}/static/img/board/file-icon2.png">
																</label>
																<input type="file" id="file" style="display: none;">
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="form-footer">
									<input type="submit" value="질문 등록">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="../header/footer-main.jsp" flush="false" />
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/board/board_write.js"></script>
</html>














