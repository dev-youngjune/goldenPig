<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../assets/css/admin/sidemenu.css">
</head>
<body>
<div class="side-menu">
				<div>
					<div class="menu-title-layout">
						<div class="menu-title">
							<%-- <div>
								<a href="<!-- 메인 페이지 경로 -->"> <img src="../../assets/img/admin/home__icon.png" class="icon">
								</a>
							</div> --%>
							<div class="menu-name">
								MENU
							</div>
						</div>
					</div>
					<ul class="menu-bar">
						<li class="menu">
							<div class="menu-flex">
								<div>
									<img src="../../assets/img/admin/board_icon.png" class="icon">
								</div> 
								<a href=""> 
									<span>게시판 관리</span>
								</a>
								<div class="triangle-button">
									<img src="../../assets/img/admin/arrow_icon.png" class="icon triangle-icon triangle">
								</div>
							</div>
							<ul class="menus1 menus" style="display: none;">
								<li class="select-menu">
									<a href="adminPage-boardList.jsp"> 
										<span>전체 게시판</span>
									</a>
								</li>
								<li class="select-menu">
									<a href="adminPage-freeBoardList.jsp"> 
										<span>자유 게시판</span>
									</a>
								</li>
								<li class="select-menu">
									<a href="adminPage-bankList.jsp"> 
										<span>저축 게시판</span>
									</a>
								</li>
							</ul>
						</li>

						<li class="menu">
							<div class="menu-flex">
								<div>
									<img src="../../assets/img/admin/notice_icon.png" class="icon">
								</div>
								<a> 
									<span>공지사항 관리</span>
								</a>
								<div class="triangle-button">
									<img src="../../assets/img/admin/arrow_icon.png" class="icon triangle-icon triangle">
								</div>
							</div>
							<ul class="menus2 menus" style="display:none;">
								<li class="select-menu">
									<a href="adminPage-noticeList.jsp">
										<span>공지사항 목록</span>
									</a>
								</li>
								<li class="select-menu">
									<a href="adminPage-noticeWrite.jsp">
										<span>공지사항 작성</span>
									</a>
								</li>
							</ul>	
						</li>
						<li class="menu">
							<div class="menu-flex">
								<div>
									<img src="../../assets/img/admin/user_icon.png" class="icon">
								</div> 
								<a href="adminPage-memberList.jsp">
									<span>회원정보 관리</span>
								</a>
							</div>
						</li>

						<li class="menu">
							<div class="menu-flex">
								<div>
									<img src="../../assets/img/admin/banner_icon.png" class="icon">
								</div> 
								<a href="adminPage-bannerList.jsp"> 
									<span>배너 관리</span>
								</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="../../assets/js/admin/sideBar-menu.js"></script>
</html>