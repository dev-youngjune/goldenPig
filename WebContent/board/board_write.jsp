<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문 등록</title>
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
													<input type="text" name="title" placeholder="물음표로 끝나는 제목을 입력해보세요.">
													<span class="title-number-check">(0/80자)</span>
												</div>
											</div>
										</div>
										<div class="question-body-container">
											<div class="qeusetion-body">
												<div class="qeustion-content">
													<div class="question-padding">
														<input type="text" name="content" placeholder="연말정산에 질문을 해주세요.">
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
</html>