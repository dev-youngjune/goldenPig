<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="../assets/css/notice/notice.css">
</head>
<body>
	<!-- 헤더 -->
	<%-- <jsp:include page="/header/header.jsp" flush="false" /> --%>
	<div class="size-controll"
		style="background-color: rgb(250, 250, 250);">
		<div class="container no-padding-xs">
			<!-- style="height: auto !important;" -->
			<!-- ::before  -->
			<div class="row" style="height: auto !important;">
				<!-- ::before -->
				<!-- 사이드 베너 -->
				<aside></aside>
				<!-- 페이지 전체  -->
				<main class="all-col">
					<!-- 공지사항 쪽  -->
					<div class="card card-header tw-bg-white">
						<h4 class="title">공지사항</h4>
					</div>
					<!-- [필독] 공지사항 첫번째 글  -->
					<article class="card">
						<!-- 이태원 -->
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href="" class> <!--공지사항 제목  -->
								<h3>
									<!--필독 라벨  -->
									<span class="label pull-left"> <i
										class="icon icon-check tw-text-white"> <!-- before?????????? -->
									</i> 필독
									</span> [공지] 프리미엄 멤버십 혜택 추가 안내
								</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date text-mute word-spacing"> 2023.02.02 </span>
							</p>
						</div>
					</article>
					<!-- [필독] 공지사항 두번째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href=""> <!--공지사항 제목  -->
								<h3>
									<!--필독 라벨  -->
									<span class="label pull-left"> <i
										class="icon icon-check tw-text-white"> <!-- before?????????? -->
									</i> 필독
									</span> [공지] 베이직 멤버십 30% 할인 이벤트 중!
								</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date txt-mute word-spacing"> 2023.02.01 </span>
							</p>
						</div>
					</article>
					<!-- [필독] 공지사항 세번째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href="" class> <!-- 공지사항 제목 -->
								<h3>
									<span class="label pull-left"> <i
										class="icon icon-check tw-text-white"> </i> 필독
									</span> [공지] 애플 iOS 회원 멤버십 구독 방법 안내
								</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜 -->
								<span class="date txt-mute word-spacing"> 2023.01.06 </span>
							</p>
						</div>
					</article>
					<!-- [필독] 공지사항 네번째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href=""> <!--공지사항 제목  -->
								<h3>
									<!--필독 라벨  -->
									<span class="label pull-left"> <i
										class="icon icon-check tw-text-white"> <!-- before?????????? -->
									</i> 필독
									</span> [공지] 아하 커뮤니티 패널티 정책
								</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date txt-mute word-spacing"> 2022.11.30 </span>
							</p>
						</div>
					</article>
					<!-- [필독] 공지사항 다섯번째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href=""> <!--공지사항 제목  -->
								<h3>
									<!--필독 라벨  -->
									<span class="label pull-left"> <i
										class="icon icon-check tw-text-white"> <!-- before?????????? -->
									</i> 필독
									</span> [공지] 아하 질문 콘텐츠 관리정책
								</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date txt-mute word-spacing"> 2022.7.18 </span>
							</p>
						</div>
					</article>
					<!-- [필독] 공지사항 여섯번째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href=""> <!--공지사항 제목  -->
								<h3>
									<!--필독 라벨  -->
									<span class="label pull-left"> <i
										class="icon icon-check tw-text-white"> <!-- before?????????? -->
									</i> 필독
									</span> [공지] 아하 전문Q&amp;A 답변 콘텐츠 관리 정책
								</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date txt-mute word-spacing"> 2022.7.18 </span>
							</p>
						</div>
					</article>
					<!-- [필독] 공지사항 일곱번째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href=""> <!--공지사항 제목  -->
								<h3>
									<!--필독 라벨  -->
									<span class="label pull-left"> <!-- pull-left? --> <i
										class="icon icon-check tw-text-white"> <!-- before?????????? -->
									</i> 필독
									</span> [공지] 아하 오픈Q&amp;A 답변 콘텐츠 관리 정책
								</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date txt-mute word-spacing"> 2022.7.18 </span>
							</p>
						</div>
					</article>
					<!---------------------------- 필독 공지사항 끝 ----------------------------------->

					<!-- 공지사항 여덟번째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href=""> <!--공지사항 제목  -->
								<h3>[공지] 아하토큰 일일 최대 출금 수량 변경 안내(재수정)</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date txt-mute word-spacing"> 2023.02.13 </span>
							</p>
						</div>
					</article>
					<!-- 공지사항 아홉번째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href=""> <!--공지사항 제목  -->
								<h3>[공지] 프리미엄 멤버십 혜택 추가 안내</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date txt-mute word-spacing"> 2023.01.16 </span>
							</p>
						</div>
					</article>
					<!-- 공지사항 열번째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href=""> <!--공지사항 제목  -->
								<h3>멤버십 복권 이벤트 당첨자 발표</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date text-mute word-spacing"> 2023.01.09 </span>
							</p>
						</div>
					</article>
					<!-- 공지사항 열 한번째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href=""> <!--공지사항 제목  -->
								<h3>멤버십 회원을 위한 깜짝 아하 복권 이벤트</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date text-mute word-spacing"> 2022.12.22 </span>
							</p>
						</div>
					</article>
					<!-- 공지사항 열 두번째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href=""> <!--공지사항 제목  -->
								<h3>[공지] 연말정산 특별관 개설 안내</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date text-mute word-spacing"> 2022.12.19 </span>
							</p>
						</div>
					</article>
					<!-- 공지사항 열 세번째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href=""> <!--공지사항 제목  -->
								<h3>[공지] 보상량 1.5배 UP 이벤트 종료 및 활동 보상 풀 수량 변경 안내</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date text-mute word-spacing"> 2022.12.14 </span>
							</p>
						</div>
					</article>
					<!-- 공지사항 열 네번째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href=""> <!--공지사항 제목  -->
								<h3>[공지] 아하 멤버십 프로그램 론칭 안내</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date text-mute word-spacing"> 2022.12.01 </span>
							</p>
						</div>
					</article>
					<!-- 공지사항 열 다섯번째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href=""> <!--공지사항 제목  -->
								<h3>[공지] 아하 멤버십 론칭 예정 안내(수정)</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date text-mute word-spacing"> 2022.11.14 </span>
							</p>
						</div>
					</article>
					<!-- 공지사항 열 여섯째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href=""> <!--공지사항 제목  -->
								<h3>[공지] 신고 보상 제도 변경/출금 수량 기준 변경/공유 보상 제거 관련 사전 안내</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date text-mute word-spacing"> 2022.11.08 </span>
							</p>
						</div>
					</article>
					<!-- 공지사항 열 일곱번째 글  -->
					<article class="card">
						<div class="card-body">
							<!--공지사항 들어가는 링크  -->
							<a href=""> <!--공지사항 제목  -->
								<h3>[공지] 콘텐츠 관리 정책 변경 사전 안내</h3>
							</a>
							<p class="cardFoot">
								<!--공지사항 작성 날짜  -->
								<span class="date text-mute word-spacing"> 2022.11.04 </span>
							</p>
						</div>
					</article>
					<!--페이지 번호(???????)  -->
					<div class="Paginartion sm:tw-hidden tw-mt-10">
						<!-- inline-block이라고 써있는데 기능은 모르겠음  -->
						<div class="tw-inline-black">
							<button disabled="disabled" class="Pagination_pageLink -active">1</button>
							<button class="Pagination_pageLink">2</button>
							<button class="Pagination_pageLink">3</button>
							<button class="Pagination_pageLink">4</button>
							<button class="Pagination_pageLink">5</button>
							<button class="Pagination_nextLink">
								<i class="icon icon-triangle-right"> </i>
							</button>
						</div>
					</div>
					<div class="Pagination xs:tw-hidden tw-mt-10">
						<div class="tw-inline-block">
							<button disabled="disabled" class="Pagination_pageLink -active">1</button>
							<button class="Pagination_pageLink">2</button>
							<button class="Pagination_pageLink">3</button>
							<button class="Pagination_pageLink">4</button>
							<button class="Pagination_pageLink">5</button>
							<button class="Pagination_pageLink">6</button>
							<button class="Pagination_pageLink">7</button>

						</div>
					</div>
				</main>
				<!-- ::after  -->
			</div>
			<!-- ::after  -->
		</div>
	</div>
	<!-- 푸터 -->
	<%-- <jsp:include page="/header/footer-main.jsp" flush="false" /> --%>
</body>
</html>