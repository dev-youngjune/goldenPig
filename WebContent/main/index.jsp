<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../assets/css/main/bulma.css">
<link rel="stylesheet" href="../assets/css/main/main.css">
<title>메인 페이지</title>

</head>
<style>
@font-face {
	font-family: 'Pretendard-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff')
		format('woff');
	font-weight: 400;
	font-style: normal;
}
</style>
<body>
	<div class="wrapper">
		<header class="header"></header>

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
						class="tw-flex tw-justify-center"
						style="background: #F3F5F9; border-radius: 8px;"> <img
						src="https://media.a-ha.io/aha-qna/assets/web/membership/band/membership_main_desktop.png"
						class="membership-desktop-img is-hidden-touch"> <img
						src="https://media.a-ha.io/aha-qna/assets/web/membership/band/membership_main_mobile.png"
						class="membership-mobile-img is-hidden-desktop">
					</a>
				</section>

				<section class="home-section">
					<h4 class="home-section-title title is-3">전문 Q&A</h4>
					<h5 class="home-section-subtitle subtitle is-5">전문가가 직접 답변을
						남겨줘요</h5>
					<div class="home-section-categoryCards tile is-ancestor">
						<div class="home-section-categoryCards-wrapper tile is-parent">
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<a class="categoryCard">
										<img alt="" src="../assets/img/main/5310117_coin_dollar_money_icon.svg">
									</a>
									<span>연말정산</span>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<a class="categoryCard"> </a> <span>이자</span>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<a class="categoryCard"> </a> <span>금리</span>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<a class="categoryCard"> </a> <span>의료</span>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<a class="categoryCard"> </a> <span>보험</span>
								</div>
							</article>
						</div>


					</div>
				</section>
				<section class="home-section">
					<h4 class="home-section-title title is-3">오픈 Q&A</h4>
					<h5 class="home-section-subtitle subtitle is-5">우리들의 지식을 자유롭게 나눠요</h5>
					<div class="home-section-categoryCards tile is-ancestor">
						<div class="home-section-categoryCards-wrapper tile is-parent">
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<a class="categoryCard"> </a> <span>생활꿀팁</span>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<a class="categoryCard"> </a> <span>청소</span>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<a class="categoryCard"> </a> <span>세탁</span>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<a class="categoryCard"> </a> <span>자동차</span>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<a class="categoryCard"> </a> <span>등산</span>
								</div>
							</article>
						</div>
					</div>
				</section>
				<!-- 아래쪽 내용들은 다 home-section으로 묶임 -->
				<section class="home-section"></section>
			</article>
		</main>

		<footer></footer>
	</div>
</body>
</html>