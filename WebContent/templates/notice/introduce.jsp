<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 소개</title>
<link rel="stylesheet" href="../../assets/css/notice/introduce.css">
</head>
<body>
	<jsp:include page="../header/header.jsp" flush="false" />
	<!-- 전체 div  -->
	<div id="lay_out">
		<!-- 소개 타이틀 (가장 상단), 첫번째 섹션 -->
		<section class="section1">
			<div class="box">
			<div>
				<img alt="intTT" src="../../assets/img/notice/introTT.png" style=" width: -webkit-fill-available;">
			</div>
			<!--<div class="introTitle">
					우리의 새로운
					<br class="desk:tw-hidden">
					지식 커뮤니티, 아하
				</div> -->
			</div>
		</section>
<!-- 두번째 섹션 -->
			<section class="section2" style='display : flex justify-content : space-around'>
				<img alt="leftSide" src="../../assets/img/notice/intro02.png"><!-- 섹션 2의 좌측 이미지 -->	
				<div><!-- 이미지 --></div>
				<div class="box">
				<div class="sec2_left"> 
					
				</div>
					<!-- 섹션 2의 우측 내용 -->
					<div class="sec2_right">
						<!-- 섹션 2의 타이틀 -->
						<div class="introTitle">
						무엇이든 공유하세요.
						</div>
							<!-- 섹션2의 내용  -->
							<div class="description">
								원하는 금융의 꿀팁은 GoldenPig에 물어보세요
									<br>
									많은 사람들의 꿀팁을 들어볼 수 있어요
									<br>
									몰랐던 정보를 알게 될 거예요.
							</div>
					</div>
				</div>	
			</section>
		<!-- 세번째 섹션  -->	
		<section class="section3" style='display : flex justify-content : space-around'>
			<!-- 섹션 글 전체 div  -->
		<div class="box">
			<div>
				<img alt="rightSide" src="../../assets/img/notice/intro01.png">
			</div>
			<div>
				<!-- 섹션 상단 큰 글씨 -->
				<div class="introTitle tw-text-center">
					유익한 커뮤니티에서
					<br>
					소통하세요.	
				</div>
					<!-- 섹션 하단 작은 글씨 -->
					<div class="description tw-text-center">
					관심있는 저축상품부터 요즘 유행하는 주식까지
					<br>
					건강하고 긍정적인 커뮤니티에서 서로 소통해요.
					</div>	
			</div>
		</div>
		</section>
	</div>
<script>
    var count = 2;
    window.onscroll = function(e) {
      console.log(window.innerHeight , window.scrollY,document.body.offsetHeight)
      if((window.innerHeight + window.scrollY) >= document.body.offsetHeight) { 
        setTimeout(function(){
          var addContent = document.createElement("div");
          addContent.classList.add("box")
          /* addContent.innerHTML = `<p>${++count}번째 블록</p>` */
          document.querySelector('section').appendChild(addContent);
        }, 1000)  
      }
    }
</script>
		
	<!-- 푸터 -->
	<jsp:include page="../header/footer-main.jsp" flush="false"/>
</body>
</html>