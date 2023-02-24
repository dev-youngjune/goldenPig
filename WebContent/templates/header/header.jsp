<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- <link rel="stylesheet" href="../assets/css/main/bulma.css"> -->
<link rel="stylesheet" href="../assets/css/header/header.css">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
	<jsp:include page="../header/sidebar.jsp" flush="false" />
	<!-- upper navigation -->
	<nav class="navigation">
		<div class="nav-wrapper">
			<div class="nav-container">
				<div class="nav-left">
					<a class="nav-brand nav-brandLogo">
						<img alt="" src="../assets/img/admin/logo_icon.png" style="width: 56px;">
					</a>
					<a class="nav-brand nav-brandText">
						<img alt="" src="../assets/img/header/logo_text.png" style="width: 135px;">
					</a>
				</div>
				<div class="nav-right">
					<div class="nav-right-item nav-search">
						<form action="#" class="form-search is-relative">
							<input placeholder="궁금한 것을 검색해보세요.">
							<button
								style="appearance: none; border: 0 solid; text-align: left; display: none;">
							</button>
							<a href="#" class=""
								style="cursor: pointer; right: 50%; position: absolute;">
								<img style="height: 36px; cursor: pointer;" alt=""
								src="../assets/img/header/search_icon.png">
							</a>
						</form>
					</div>
					<div class="nav-right-item nav-register is-hidden is-inline-block">
						<a href="#" class="nav-right-button">로그인</a> <a href="#"
							class="nav-right-button">회원가입</a>
					</div>
					<div class="nav-right-item profile-wrapper">
						<!-- is-hidden -->
						<div class="nav-notification">
							<a href="#"> <img class="show-img"
								src="../assets/img/header/bell.png" alt="">
							</a>
						</div>
						<div class="nav-profile">
							<a href="#"> <img class="show-img"
								src="../assets/img/member/user_icon.png" alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="../assets/js/header/header.js"></script>
</html>