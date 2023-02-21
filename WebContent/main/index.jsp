<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../assets/css/main/bulma.css">
<link rel="stylesheet" href="../assets/css/main/mainBanner.css">
<link rel="stylesheet" href="../assets/css/main/mainContainer.css">
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
		<!-- 헤더 넣는 jsp 코드 -->
		<%-- <%@ include file="/main/header.jsp"%> --%>
		
		<!-- 헤더 넣는 jsp 코드() -->
		<jsp:include page="/main/header.jsp" flush="false" />
		
		<main>
			<header class="banner"></header>
			<article class="home-container">
				<section class="home-buttons columns is-relative">
					<div class="home-button-wrapper column is-one-quarter">
						<a>
							<button>
								<svg class="">
									
								</svg>
								<span>보유 저축</span>
							</button>
						</a>
					</div>
					<div class="home-button-wrapper column is-one-quarter">
						<a>
							<button>
								<svg></svg>
								<span>버튼2</span>
							</button>
						</a>
					</div>
					<div class="home-button-wrapper column is-one-quarter">
						<a>
							<button>
								<svg></svg>
								<span>버튼3</span>
							</button>
						</a>
					</div>
					<div class="home-button-wrapper column is-one-quarter">
						<a>
							<button>
								<svg></svg>
								<span>버튼4</span>
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
										<a class="categoryCard is-align-content-center"> <img
											alt=""
											src="../assets/img/main/5310117_coin_dollar_money_icon.svg">
										</a> <span class="is-align-content-center">연말정산</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="categoryCard-wrapper">
										<a class="categoryCard"> </a> <span>이자</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard"> </a> <span>금리</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard"> </a> <span>의료</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard"> </a> <span>보험</span>
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
										<a class="categoryCard"> </a> <span>생활꿀팁</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard"> </a> <span>청소</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard"> </a> <span>세탁</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard"> </a> <span>자동차</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard"> </a> <span>등산</span>
									</div>
								</div>
							</article>
						</div>
					</div>
				</section>
				<!-- 아래쪽 내용들은 다 home-section으로 묶임 -->
				<section class="home-section"></section>
			</article>
		</main>

<!-- 		<footer id="footers"></footer> -->
		<jsp:include page="/main/footer.jsp" flush="false" />
	</div>
</body>


</html>