<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세보기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/notice/noticeContent.css">
</head>
<body>
<!-- 헤더 -->
<jsp:include page="../header/header.jsp" flush="false" />
   <div class="container">
      <div><!-- 헤더 부분 --></div>
      
      <!-- 공지사항 부분  -->
      <main class="main">
         <div class="notice-box-layout">
            <div class="notice-box">
               <header class="notice-title-box">
                  <div>
                     <a class="notice-cate" href="#">
                        <span>공지사항</span>
                     </a>
                  </div>
                  <!-- 공지사항 제목 춢력 부분 -->
                  <h2>[공지] <c:out value="${notice.noticeTitle}"/></h2>
                  <p class="notice-date">
                     <!-- 등록 날짜 출력 부분 -->
                     <span><c:out value="${notice.noticeRegisterDate}"/></span>
                  </p>
                  <hr>
               </header>
               <div class="content-box-layout">
                  <div class="content-box">
                     <p>안녕하세요. 아하팀입니다</p>
                     	<br>항상 아하 서비스를 아껴주시는 회원 여러분께 감사의 말씀드립니다.
                     	<p></p>
                     	<p>
                     	최근 건강한 아하 커뮤니티 활동을 심각하게 저해하는 질문 도배 어
                     	뷰징 행위가 늘어남에 따라, 서비스 문의로 접수된 어뷰징 제보 취
                     	합 및 AI 필터링을 통해 어뷰징 의심 회원 질문 활동 데이터를 전
                     	수 조사할 예정입니다.
                     	</p>
                     	<p></p>
                     	<p>데이터 검수에 따라 어뷰징이 확인되는 경우, 커뮤니티 어뷰징 정책
                     	에 맞게 제재 조치가 진행됩니다.</p>
  							<p></p>
  								<h3>
  								<strong>[질문 어뷰징 행위]</strong>
  								</h3>
  							<p>아하 커뮤니티에서 질문 어뷰징으로 판단되는 기준은 아래와 같습니
  							다.</p>	
  						<ul>
  							<li>
  								<p>타 사이트의 콘텐츠를 그대로 혹은 일부 변형하여 올리는 행위</p>
  							</li>
  						<li>
  							<p>아하 커뮤니티에 있는 질문을 그대로 혹은 일부 변형하여 올리는 행위</p>
  						</li>
  					<li>
  						<p>키워드를 바꿔가며 혹은 같은 키워드를 변형하여 질문 개수를 늘리는 행위</p>
  					</li>
  						<li>
  							<p>도배성 질문 알림창을 무시하고 질문을 업로드 한 경우</p>
  						</li>
  							<li>
  								<p>각 질문간의 간격이 비정상적으로 짧거나 일정한 경우</p>
  									</li>
  								<li>
  									<p>AI 검수로 비정상적인 등록이 감지된 기록</p>
  								</li>
  									<li>
  										<p>정상적인 커뮤니티 사용자 패턴과 매우 상이한 경우</p>
  									</li>
  										<li>
  											<p>기타 아하팀 판단</p>
  										</li>
  						</ul>	
					<p></p>
						<p>위 질문 어뷰징 행위는 답변자의 의욕을 저하시키고 원활한 커뮤니티 
						보상 시스템 운영을 방해하는 행위로써, 위 행위가 적발되는 즉시 아래와
						 같은 조치가 이루어질 예정입니다.</p>
					<p></p>
					<p></p>
                  </div>
               </div>
            </div>
         </div>
      </main>
   </div>
   <!--푸터  -->
   <jsp:include page="../header/footer-main.jsp" flush="false"/>
</body>
</html>