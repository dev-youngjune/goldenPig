<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지- 회원 정보 목록</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/admin/adminPage-boardList.css">
</head>
<body>
	<div>
		<div class="info-title-box info-title-box-flex">
			<div class="logo-box-layout">
				<div class="logo-box">
					<img src="../assets/img/admin/logo_icon.png">
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
			<div id="side-bar"></div>
			<!-- 사이드 바 끝-->
		
			<div class="container">
				<div class="container-margin">
					<!-- 헤더 -->
					<div class="delete-box-layout">
							<div class="delete-box">
								<button class="delete-button">선택 게시물 삭제</button>
							</div>
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
											<th>
												<input type="checkbox" id="allSelect">
											</th>
											<th>No</th>
											<th>이메일</th>
											<th>닉네임</th>
											<th>핸드폰 번호</th>
											<th>가입 날짜</th>
											<th></th>
										</tr>
									</thead>
									<tr>
										<td>
											<input type="checkbox" name="check">
										</td>
										<td>1</td>
										<td>
											<a href="adminPage-member.jsp">ljw120@naver.com</a>
										</td>
										<td>멍충코딩</td>
										<td>010-1234-1234</td>
										<td>2023.01.11</td>
										<td class="modify-button">
											<a href="<!-- 수정 페이지 -->">수정</a>
										</td>
									</tr>
								</table>
							</div>
						</div>
					</section>
					
					<!-- 페이지 버튼 -->
					<div class="page-button-box-layout">
						<div class="page-button-box">
							<!-- 페이지 번호 -->
							<div class="page-button-active page-button button-check">
								<div class="page-button-margin">
									<div>
										<span>1</span>
									</div>
								</div>
							</div>
							<div class="page-button button-check">
								<div class="page-button-margin">
									<div>
										<span>2</span>
									</div>
								</div>
							</div>
							<div class="page-button button-check">
								<div class="page-button-margin">
									<div>
										<span>3</span>
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
<script src="../assets/js/admin/menuLoad.js"></script>
<script>
	$("#allSelect").click(function() {
	    if($("#allSelect").is(":checked")) $("input[name=check]").prop("checked", true);
	    else $("input[name=check]").prop("checked", false);
	});
	
	$("input[name=check]").click(function() {
	    var total = $("input[name=check]").length;
	    var checked = $("input[name=check]:checked").length;
	
	    if(total != checked) $("#allSelect").prop("checked", false);
	    else $("#allSelect").prop("checked", true); 
	});
	
	const pageButton = $(".page-button");
	
/* 	pageButton.click(function(){
		if(pageButton.hasClass("page-button-active")){
			pageButton.removeClass("page-button-active");
		}else {
			pageButton.addClass("page-button-active");
		}
	}); */
		
	
</script>
</html>