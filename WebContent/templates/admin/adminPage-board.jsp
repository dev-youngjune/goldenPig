<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
							<a>
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
										<span>아무개</span>
								</div>
								<div class="info-member">
									<span class="span-bold">작성자 :</span>
									<!-- 작성자 명  -->
									<span>임**</span>
								</div>
								<div class="info-member">
									<span class="span-bold">좋아요 :</span>
									<!-- 좋아요 갯수  -->
									<span>3</span>
								</div>
								<div class="info-member">
									<span class="span-bold">작성 날짜 :</span>
									<!-- 작성 날짜  -->
									<span>2022.01.03</span>
								</div>
							</div>
							<hr>
							<div class="info-table">
								<div><!-- 게시판 내용 -->
										원래는 연말정산이 많이쓰면 공제해서 그만큼 돌려주고 적게 쓰면 다시 개어내게 하는건데 4대보험 내는 직장은 받아도 직장에서 다받고 내도 직장에서 내주더라구요 원리가 나라에서 회사로주고 원래는 개인한테 주는건가요?
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