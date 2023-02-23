<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
@font-face {
         font-family: 'Pretendard-Regular';
         src: url('https://cdn.jsdelivr.net/gh/Pdroject-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
         font-weight: 400;
         font-style: normal;
}
</style>
<head>
<meta charset="UTF-8">
<title>FAQ</title>
<link rel="stylesheet" href="../assets/css/notice/faq.css">
</head>
<body>
	<jsp:include page="/header/header.jsp" flush="false" />
	<!-- FAQ 전체  -->
	<div class="container page">
		<!-- ::before -->
			<!--FAQ 타이틀  -->
			<h1 class="title text-center jalnan-font title-font">
				<img alt="" src="../assets/img/notice/faq.png">
				<!-- FAQ -->
			</h1>
				<!-- FAQ 아래 내용 전체 div-->
				<div>
					<!-- 첫번째 FAQ -->
					<div class="arcoItem active"> <!-- accordion-item  -->
						<div class="titleArco"> <!--accordian-item-title  -->
							<button class="itemtrigger"> <!-- accordian-item-trigger --><!-- button, h4 flex -->
								<!-- FAQ 제목 -->
								<h4 class="faq-name"> <!-- accordian-item-title-text -->
									서비스와 관련된 문의사항은 어디에 문의해야 하나요?
								</h4>
									<span class="icon" > <!-- accordian-item-trigger-icon -->
									</span>
							</button>
						</div>
						<!-- FAQ내용 -->
						<div class="faq-content"> <!-- accordion-item-details -->
							<div class="faq-content-in"> <!-- accordion-item-details-inner -->
								<p>					
									하단의 아하봇 또는
									<button>
											<span class="highlight">
												여기
											</span>
									</button>
									를 눌러 문의 사항을 보내주세요
								</p>
							</div>
						</div>
					</div>
						<!-- 두번째 FAQ  -->
						<div class="arcoItem active">
							<div class="titleArco">
								<button class="itemtrigger"><!-- button, h4 flex -->
									<!--FAQ 제목  -->
									<div>
										<h4 class="faq-name">
											질문은 아무나 할 수 있나요?
										</h4>
									</div>
									<span class="icon">
									</span>
							</button>
						</div>
						<!--FAQ 내용  -->
						<div class="faq-content">
							<div class="faq-content-in">
								<p>
       								아하Q&amp;A에서는 누구나 다양한 분야에 질문 할 수 있습니다. 단, 콘텐츠
        							관리 정책을 준수하지 않은 질문은 신고를 받을 수 있고, 신고가 승인되면
        							패널티를 받게 되니 콘텐츠 관리 정책을 반드시 지켜주세요.
								</p>
									<p>
										<a href="" class="btn"> <!--링크 연결  -->
											이하 콘텐츠 관리정책 보기
										</a>
									</p>
							</div>										
						</div>
					</div>
					<!--세번째 FAQ -->
					<div class="arcoItem active">
							<div class="titleArco">
								<button class="itemtrigger"><!-- button, h4 flex -->
									<!-- FAQ 제목  -->
									<h4 class="faq-name">
										답변은 아무나 할 수 있나요?
									</h4>
									<span class="icon">
									</span>
							</button>
						</div>
						<!-- FAQ 내용 -->
						<div class="faq-content">
							<div class="faq-content-in">
								<p>
							        아하Q&amp;A의 전문가는 각 분야의 현업 전문가 또는 실무자 입니다. 전문가는
        							일반 사용자 보다 더 큰 보상을 받을 수 있습니다. 전문가가 되려면
        							'전문가 신청'을 통해 전문가 승인을 받아주세요.
								</p>
									<p>
										(단, 생활상식 분야는 누구나 답변이 가능해요)
									</p>	
									<p>
										<a href="" class="btn"> <!--링크 연결하기  -->
											전문가 신청
										</a>
									</p>
							</div>										
						</div>					
					</div>
					<!-- 네번째 FAQ  -->
					<div class="arcoItem active">
							<div class="titleArco">
								<button class="itemtrigger"><!-- button, h4 flex -->
									<!--FAQ 제목  -->
									<h4 class="faq-name">
										아하토큰이 무엇인가요?
									</h4>
									<span class="icon">
									</span>
							</button>
						</div>
						<!--FAQ 내용  -->
						<div class="faq-content">
							<div class="faq-content-in">
								<p>
        							아하토큰은 질문, 답변, 콘텐츠 공유 등 아하Q&amp;A 활동에 대한 보상으로
        							지급되는 암호화폐 입니다.
								</p>
							</div>										
						</div>						
					</div>
					<!-- 다섯번째 FAQ  -->
					<div class="arcoItem active">
						<div class="titleArco">
							<button class="itemtrigger"><!-- button, h4 flex -->
								<!-- FAQ 제목 -->
								<h4 class="faq-name">
									아하토큰은 어떻게 모을 수 있나요?
								</h4>
									<span class="icon">
									</span>
							</button>
						</div>
						<!-- FAQ내용 -->
						<div class="faq-content">
							<div class="faq-content-in">
								<p>
									아하토큰을 모으는 법은 아래의 링크를 통해 확인해주세요
								</p>
									<p href="" target="_blank" class="btn"> <!-- 링크 추가 필요  -->
									 아하토큰 모으는 법
								</p>
							</div>
						</div>					
					</div>
					<!-- 여섯번째 FAQ  -->
					<div class="arcoItem active">
						<div class="titleArco">  <!-- style="background-color: rbg(245,245,250); color: rbg(97,88,242);" -->
							<button class="itemtrigger"><!-- button, h4 flex -->
								<!-- FAQ 제목 -->
								<h4 class="faq-name">
									계정 정보 또는 비밀번호를 잃어버렸습니다.
								</h4>
									<span class="icon">
									</span>
							</button>
						</div>
						<!-- FAQ내용 -->
						<div class="faq-content">
							<div class="faq-content-in">
									<p>
										로그인 페이지에서
										<a href="" target="_blank"> <!-- 링크 추가 필요  -->
									 		<span class="hightlight">
									 		계정을 잊으셨나요?
									 		</span>	
										</a>
										링크를 누르셔서 계정 정보를 찾으실 수 있습니다.
									</p>
							 	<p>
        						비밀번호를 잊어버리신 경우에는 비밀번호 재설정을 해야 합니다. 위
      	  						설명에 따라 계정 정보를 찾으시고 하단에 '비밀번호를 재설정' 버튼을
        						클릭하세요. 버튼을 클릭하면 비밀번호를 재설정할 수 있는 링크가 담긴
        						메일이 가입한 메일 주소로 전송됩니다.
								</p>	
							</div>
						</div>							
					</div>
					<!--일곱번째 FAQ  -->
					<div class="arcoItem active">
						<div class="titleArco">
							<button class="itemtrigger"><!-- button, h4 flex -->
								<!-- FAQ 제목 -->
								<h4 class="faq-name">
									전화번호가 변경되었습니다. 로그인 및 서비스 사용에는 문제가 없나요?
								</h4>
									<span class="icon">
									</span>
							</button>
						</div>
						<!-- FAQ내용 -->
						<div class="faq-content">
							<div class="faq-content-in">
									<p>
								        로그인 및 서비스 이용에 아무런 문제가 없습니다. 다만 전화번호와
        								연동되어 있는 암호화폐 지갑을 사용하시는 경우, 계정의 전화번호를
        								변경하지 않으시면 토큰 출금시 잘못된 지갑으로 송금이 될 수 있으므로
        								반드시 로그인 후
										<a href="" target="_blank"> <!-- 링크 추가 필요  -->
									 		<span class="hightlight">
									 		계정 설정 페이지
									 		</span>	
										</a>
										에서 전화번호를 번경하시기 바랍니다
									</p>
							 	<p>
							        만일, 소셜로그인이 되지 않으면 전화번호에 연동된 소셜 계정이 변경된
        							경우이므로 아래 FAQ를 참고하시기 바랍니다.
								</p>	
							</div>
						</div>						
					</div>
					<!-- 여덟번째 FAQ -->
					<div class="arcoItem active">
						<div class="titleArco">
							<button class="itemtrigger"><!-- button, h4 flex -->
								<!-- FAQ 제목 -->
								<h4 class="faq-name">
									소셜 계정(카카오톡, 네이버)이 바뀌어 로그인이 되지 않습니다.
								</h4>
									<span class="icon">
									</span>
							</button>
						</div>
						<!-- FAQ내용 -->
						<div class="faq-content">
							<div class="faq-content-in">
								<p>
							        소셜 계정이 변경되어도 기존 계정으로 로그인이 가능합니다. 단, 정보
        							변경에 동의를 한 경우에만 이전 계정으로 로그인이 가능하며, 동의하지
        							않은 경우에는 로그인하실 수 없습니다.
								</p>
						 			<p>
										소셜 로그인을 사용 중인데 이메일 로그인으로 전환하기
										를 원하시는 경우, 하단의 아하봇 또는
										<button>
											<span class="highlight">
												여기
											</span>
										</button>	
												를 눌러 문의 사항을 보내주세요.
									</p>	
								<p>
									단, 카카오톡 연동 계정을 네이버 연동 계정으로 변경하는
									것은 불가능합니다.(반대의 경우도 마찬가지입니다.)
								</p>		
							</div>
						</div>	
					</div>
					<!--아홉번쨰 FAQ  -->
					<div class="arcoItem active">
						<div class="titleArco">
							<button class="itemtrigger"><!-- button, h4 flex -->
								<!-- FAQ 제목 -->
								<h4 class="faq-name">
									회원 탈퇴를 하고 싶습니다.
								</h4>
									<span class="icon">
									</span>
							</button>
						</div>
						<!-- FAQ내용 -->
						<div class="faq-content">
							<div class="faq-content-in">
								<p>
						        계정 설정 페이지의 '계정 정보 변경'을 누르시면 회원 탈퇴 메뉴를 찾으실
        						수 있어요. 또한, 탈퇴하면 1년간 재가입 할 수 없으니 회원 탈퇴는
        						신중하게 선택해 주세요.
								</p>
							</div>
						</div>	
					</div>
				</div>
					<!-- ::after  -->
	</div>
	<jsp:include page="/header/footer-main.jsp" flush="false"/>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>

/* FAQ 슬라이드 코드  */


	$(".icon").each((i, e) => {
	
	    var index = i;
	   var $dom = $(e);
	   var $faq = $($(".faq-content")[index]); 
	   var $change = $($(".titleArco")[index]);
	   var $itemtrigger = $($(".itemtrigger")[index]);
	   let checkSlide;
	   let makeColor; 
	   
	   $dom.on("click", function(e) {
	      e.preventDefault();
	      
	      if(checkSlide){
	    	 $itemtrigger.css("background-color","#fff");
	    	 $itemtrigger.css("color","black");
	         $dom.removeClass("triggerIcon");
	         $faq.slideUp();
	         checkSlide = false;
	      } else{
	    	 $itemtrigger.css("background-color","rgb(245, 245, 250)");
		     $itemtrigger.css("color","rgb(97, 88, 242)");
	         $dom.addClass("triggerIcon");
	         $faq.slideDown();
	         checkSlide = true;
	      }
	   });
	});
    
let faqAnimate = (function(){
	function change(value){
		
	}
})();    
</script>
</html>