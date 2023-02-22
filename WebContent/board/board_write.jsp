<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문 작성</title>
<link rel="stylesheet" href="../assets/css/board/board_write.css">
</head>
<body>
	<div class="wrap">
		<div class="page-container">
			<div class="container">
				<div class="flex-justify-center">
					<div class="main">
						<div class="row">
							<form action="" name="writeForm">
								<div class="header">
									<label for="category-select">분야선택</label> <select
										name="categorySelect" id="category-select">
										<option>저축게시판</option>
										<option>자유게시판</option>
									</select>
									<div class="arrow-icon">
										<img src="../assets/img/board/arrow-icon.png">
									</div>
								</div>
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
														<textarea placeholder="연말정산에 질문을 해주세요."></textarea>
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
																	<img src="../assets/img/board/bold-icon.png">
																</label>
																<input type="" id="bold" style="display: none;">
															</div>
															<div class="menubar-button">
																<label for="unlist">
																	<img src="../assets/img/board/unlist-icon.png">
																</label>
																<input type="" id="unlist" style="display: none;">
															</div>
															<div class="menubar-button">
																<label for="orlist">
																	<img src="../assets/img/board/orlist-icon.png">
																</label>
																<input type="" id="orlist" style="display: none;">
															</div>
															<div class="menubar-button">
																<label for="file">
																	<img src="../assets/img/board/file-icon2.png">
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
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="../assets/js/board/board_write.js"></script>
</html>














