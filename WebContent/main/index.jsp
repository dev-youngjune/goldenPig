<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../assets/css/main/bulma.css">
<link rel="stylesheet" href="../assets/css/main/mainBanner.css">
<link rel="stylesheet" href="../assets/css/main/mainContainer.css">
<link rel="stylesheet" href="../assets/css/font/fontFamily.css">

<title>메인 페이지</title>
<style type="text/css">
	body {
		margin: 0;
	}
</style>
</head>
<!-- 헤더 넣는 js코드 -->
<!-- <script type="text/javascript">
	$(document).ready(function() {
		$("#headers").load("/main/header.jsp"); //헤더 인클루드
		$("#footers").load("footer.jsp"); //푸터부분 인클루드
	});
</script> -->
<body>
	<div class="wrapper">
	<div id="headers"></div>
		
		<!-- 헤더 넣는 jsp 코드() -->
		<jsp:include page="/header/header.jsp" flush="false" />
		<%-- <jsp:include page="/header/header-after.jsp" flush="false" /> --%>
		
		<main>
			<header class="banner"></header>
			<article class="home-container">
				<section class="home-buttons columns is-relative">
					<div class="home-button-wrapper column is-one-quarter">
						<a>
							<button>
								<img alt="" src="../assets/img/main/coin_icon.svg">
								<span>보유 저축</span>
							</button>
						</a>
					</div>
					<div class="home-button-wrapper column is-one-quarter">
						<a>
							<button>
								<img alt="" src="../assets/img/main/search-64.png">
								<span>전문가 신청</span>
							</button>
						</a>
					</div>
					<div class="home-button-wrapper column is-one-quarter">
						<a>
							<button>
								<img alt="" src="../assets/img/main/membership_card-64.png">
								<span>멤버십</span>
							</button>
						</a>
					</div>
					<div class="home-button-wrapper column is-one-quarter">
						<a>
							<button>
								<img alt="" src="../assets/img/main/user_avatar-64.png">
								<span>계정 설정</span>
							</button>
						</a>
					</div>
				</section>

				<section class="expert-section-wrapper">
					<a href="/extras/about-membership"
						class="is-flex is-justify-content-center"
						style="background: #F3F5F9; border-radius: 8px;">
						<img
						src="https://media.a-ha.io/aha-qna/assets/web/membership/band/membership_main_desktop.png"
						class="membership-desktop-img is-hidden-touch">
					</a>
					<!--  -->
					<a href="/extras/about-membership"
						class="is-flex is-justify-content-center"
						style="background: #F3F5F9; border-radius: 8px;">
						
						<img
						src="https://media.a-ha.io/aha-qna/assets/web/membership/band/membership_main_mobile.png"
						class="membership-mobile-img is-hidden-desktop">
					</a>
				</section>

				<section class="home-section">
					<h4 class="home-section-title title is-5">전문 Q&A</h4>
					<h5 class="home-section-subtitle subtitle is-6">전문가가 직접 답변을
						남겨줘요</h5>
					<div class="home-section-categoryCards tile is-ancestor">
						<div class="home-section-categoryCards-wrapper tile is-parent">
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="categoryCard-wrapper">
										<a href="#" class="categoryCard is-align-content-center">
										<img alt="" src="../assets/img/main/bank-64.png">
										</a> <span class="is-align-content-center">통장</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="categoryCard-wrapper">
										<a href="#" class="categoryCard">
											<img alt="" src="../assets/img/main/bank-saving-64.png">
										</a> <span>적금</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a href="#" class="categoryCard">
											<img alt="" src="../assets/img/main/interest_rate-64.png">
										</a> <span>금리</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a href="#" class="categoryCard">
											<img alt="" src="../assets/img/main/loan-64.png">
										</a> <span>대출</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a href="#" class="categoryCard">
											<img alt="" src="../assets/img/main/exchange_rate_won_to_dollar-64.png">
										</a> <span>환율</span>
									</div>
								</div>
							</article>
						</div>


					</div>
				</section>
				<section class="home-section">
					<h4 class="home-section-title title is-5">오픈 Q&A</h4>
					<h5 class="home-section-subtitle subtitle is-6">우리들의 지식을 자유롭게
						나눠요</h5>
					<div class="home-section-categoryCards tile is-ancestor">
						<div class="home-section-categoryCards-wrapper tile is-parent">
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard">
											<img alt="" src="../assets/img/main/vision_eye_idea-64.png">
										</a> <span>생활꿀팁</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard">
											<img alt="" src="../assets/img/main/home_cleaning-64.png">
										</a> <span>청소</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard">
											<img alt="" src="../assets/img/main/laundry_icon-64.png">
										</a> <span>세탁</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard">
											<img alt="" src="../assets/img/main/car1-64.png">
										</a> <span>자동차</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard">
											<img alt="" src="../assets/img/main/mountain_adventure-64.png">
										</a> <span>등산</span>
									</div>
								</div>
							</article>
						</div>
					</div>
				</section>
				<!-- 아래쪽 내용들은 다 home-section으로 묶임 -->
				<section class="home-section">
					<div></div>
					<div></div>
				</section>
			</article>
		</main>

<!-- 		<footer id="footers"></footer> -->
		<jsp:include page="/header/footer-main.jsp" flush="false"/>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="../assets/js/main/main.js"></script>
</html>