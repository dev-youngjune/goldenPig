<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- <link rel="stylesheet" href="../assets/css/main/bulma.css"> -->
<link rel="stylesheet" href="../assets/css/main/bulma.css">
<link rel="stylesheet" href="../assets/css/header/header.css">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
<!-- is-hidden -->
<!-- sidebar -->
	<div class="" style="width: 100%; height: 100%;">
		<div class="sidebar">
			<div class="sidebar-inner">
				<div class="is-relative">
					<!-- X aha -->
					<header class="sidebar-primary">
						<button class="sidebar-btnX">
						<img alt="" style="width: 24px" src="../assets/img/header/Close-64.png">
						</button>
						<a class="sidebar-logo"></a>
						<button class="sidebar-alert"></button>
					</header>
					
					<!-- 로그인하세요 or 프로필 편집하기 -->
					<main class="sidebar-profileWrapper">
						<div class="needLogin">
							
						</div>
						<div class="is-hidden logedin"></div>
					</main>
					<!-- 사이드바 메뉴리스트 -->
					<article class="sidebar-menuList"></article>
					
					<!-- 로그인/회워가입 or 로그아웃 -->
					<div class="login-wrapper">
						<div class="needLogin"></div>
						<div class="is-hidden logedin"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="sidebar-backdrop modal-active"></div>
	</div>

<!-- upper navigation -->
	<nav class="navigation is-hidden">
		<div class="nav-wrapper">
			<div class="nav-container">
				<button class="nav-hamburger">
					<img style="width: 24px" alt="" src="../assets/img/main/hamburger-icon.png">
				</button>
				<div class="nav-left">
					<a class="nav-brand">
						<img alt="" src="../assets/img/account/logo.png" style="width: 55px">
					</a>
				</div>
				<div class="nav-right">
					<div class="nav-right-item nav-search">
						<form action="#" class="form-search is-relative">
							<input placeholder="궁금한 것을 검색해보세요.">
							<button style="appearance: none; border: 0 solid; text-align: left; display: none;">
							</button>
							<a href="#" class="" style="cursor: pointer; right: 0; z-index: 110; position: absolute;">
								<img style="height: 36px; cursor: pointer;" alt="" src="../assets/img/main/search_icon.png">
							</a>
						</form>
					</div>
					<div class="is-hidden nav-right-item nav-register is-inline-block">
						<a href="#" class="nav-right-button">로그인</a>
						<a href="#" class="nav-right-button">회원가입</a>
					</div>
					<div class="nav-right-item profile-wrapper"><!-- is-hidden -->
						<div class="nav-notification">
							<a href="#">
								<img class="show-img" src="../assets/img/main/bell.png" alt="">
							</a>
						</div>
						<div class="nav-profile">
							<a href="#">
								<img class="show-img" src="../assets/img/member/user_icon.png" alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>
</body>
</html>