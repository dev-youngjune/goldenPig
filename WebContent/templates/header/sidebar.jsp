<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- is-hidden -->
	<!-- sidebar -->
	<div class="is-hidden" style="width: 100%; height: 100%;">
		<div class="sidebar">
			<div class="sidebar-inner">
				<div class="is-relative">
					<!-- X aha -->
					<header class="sidebar-primary">
						<button class="sidebar-btnX ">
							<img alt="" class="sidebar-btnX-img" style="width: 24px;"
								src="${pageContext.request.contextPath}/static/img/header/Close-64.png">
						</button>
						<a class="sidebar-logo"> <img alt="" class="sidebar-logo-img"
							src="${pageContext.request.contextPath}/static/img/header/logo_green.png">
						</a>
						<button class="sidebar-alert">
							<img alt="" class="sidebar-alert-img"
								src="${pageContext.request.contextPath}/static/img/header/bell.png">
						</button>
					</header>

					<!-- 로그인하세요 or 프로필 편집하기 -->
					<main class="sidebar-main">
						<div class="is-hidden needLogin"></div>
						<div class="logedin sidebar-profileWrapper">
							<div class="sidebar-profile">
								<a href="#" class="sidebar-profile-link"> <img alt=""
									src="${pageContext.request.contextPath}/static/img/member/user_icon.png">
								</a> <a href="#" class="sidebar-nickname">
									<div class="sidebar-nickname">${userName} 강력한테리어7</div>
									<div>
										<span> 프로필 편집하기 <img alt=""
											src="${pageContext.request.contextPath}/static/img/admin/right_icon.png">
										</span>
									</div>
								</a>
							</div>
							<div class="sidebar-mainLinkWrapper">
							<ul class="columns">
								<li class="column is-one-quarter">
									<img src="${pageContext.request.contextPath}/static/img/main/5310117_coin_dollar_money_icon.svg">
									<div>보유저축</div>
								</li>
								<li class="column is-one-quarter">
									<img src="">
									<div style="min-width: 60px">전문가신청</div>
								</li>
								<li class="column is-one-quarter">
									<img src="">
									<div>멤버십</div>
								</li>
								<li class="column is-one-quarter">
									<img src="">
									<div>계정설정</div>
								</li>
							</ul>
							</div>
						</div>
					</main>
					<!-- 사이드바 메뉴리스트 -->
					<nav class="sidebar-menuList">
						<section class="accordion-wrapper">
							<div class="accordion-item">
								<div class="accordion-title">
									<button class="accordion-item-trigger">
										<h4 class="accordion-item-title-text">특별관</h4>
										<span class="accordion-item-trigger-icon"></span>
									</button>
								</div>
								<div class="acoordion-item-details">
									<div class="accordion-item-details-inner">
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">[ChatGPT]의료</a>
										</div>
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">[ChatGPT]약료</a>
										</div>
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">연말정산</a>
										</div>
									</div>
								</div>
							</div>
						</section>
						<section class="accordion-wrapper">
							<div class="accordion-item">
								<div class="accordion-title">
									<button class="accordion-item-trigger">
										<h4 class="accordion-item-title-text">전문 분야</h4>
										<span class="accordion-item-trigger-icon"></span>
									</button>
								</div>
								<div class="acoordion-item-details">
									<div class="accordion-item-details-inner">
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">법률</a>
										</div>
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">세금·세무</a>
										</div>
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">인사·노무</a>
										</div>
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">법률</a>
										</div>
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">세금·세무</a>
										</div>
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">인사·노무</a>
										</div>
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">법률</a>
										</div>
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">세금·세무</a>
										</div>
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">인사·노무</a>
										</div>
									</div>
								</div>
							</div>
						</section>
						<section class="accordion-wrapper">
							<div class="accordion-item">
								<div class="accordion-title">
									<button class="accordion-item-trigger">
										<h4 class="accordion-item-title-text">오픈 분야</h4>
										<span class="accordion-item-trigger-icon"></span>
									</button>
								</div>
								<div class="acoordion-item-details">
									<div class="accordion-item-details-inner">
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">생활꿀팁</a>
										</div>
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">청소</a>
										</div>
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">세탁</a>
										</div>
										<div class="sidebar-menuListSubItem">
											<a href="#" class="sidebar-menuListSubItem-link">자동차</a>
										</div>
									</div>
								</div>
							</div>
						</section>
						<!--
						<section class="accordion-wrapper">
							<div class="accordion-item">
								<div class="accordion-title"></div>
								<div class="acoordion-item-details"></div>
							</div>
						</section>
						<section class="accordion-wrapper">
							<div class="accordion-item">
								<div class="accordion-title"></div>
								<div class="acoordion-item-details"></div>
							</div>
						</section>
						-->
						<a href="#">
							<span>공지사항</span>
						</a>
						<a href="#">
							<span>아하 소식</span>
						</a>
						<a href="#">
							<span>아하토큰 소식</span>
						</a>
						<a href="#">
							<span>이벤트</span>
						</a>
						<a href="#">
							<span>서비스 소개</span>
						</a>
						<a href="#">
							<span>멤버십 소개</span>
						</a>
						<a href="#">
							<span>FAQ</span>
						</a>
					</nav>

					<!-- 로그인/회원가입 or 로그아웃 -->
					<div class="login-wrapper">
						<div class="needLogin"></div>
						<div class="is-hidden logedin"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="sidebar-backdrop modal-active modal"></div>
	</div>
</body>
</html>