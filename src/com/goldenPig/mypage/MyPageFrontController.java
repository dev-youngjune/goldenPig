package com.goldenPig.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.ExtractPath;
import com.goldenPig.Result;
import com.mysql.cj.x.protobuf.MysqlxPrepare.Execute;

public class MyPageFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath , "").split("\\.")[0];
		Result result = null;
		System.out.println("1." + target);
		
		
//			컨트롤러를 통해 마이 페이지로 데이터를 전송
		if(target.equals("/mypageOk")) {
			System.out.println("2." + target);
			new MyPageOkController().execute(req, resp);
			
//			마이 페이지 
		}else if(target.equals("/mypage")) {
			System.out.println("2." + target);
			result = new Result();	
			result.setPath("/templates/member/myPage.jsp");
			
//			프로필 편집 눌렀을 경우 프로필 편집 모달창 활성화 
		}else if(target.equals("/savinglistOk")) {
			System.out.println("2." + target);
			new SavingListOkController().execute(req, resp);
			
//			프로필 편집 눌렀을 경우 프로필 편집 모달창 활성화 
		}else if(target.equals("/editprofileOk")) {
			System.out.println("2." + target);
			new EditProfileOkController().execute(req, resp);
			
//			프로필 이미지 추가 (모달 내부)
		}else if(target.equals("/imgupdateOk")) {
			System.out.println("2." + target);
			new ImgUpdateOkController().execute(req, resp);
			
//			저축 리스트 수정 목록 가져오기 (모달 내부)
		}else if(target.equals("/savingListEditOk")) {
			System.out.println("2." + target);
			new SavingListEditOkController().execute(req, resp);
			
//			프로필 편집 저장 (모달 내부)
		}else if(target.equals("/savegOk")) {
			System.out.println("2." + target);
			new SaveOkController().execute(req, resp);
			
//			질문 목록의 데이터를 전송
		}else if(target.equals("/qustionsOk")) {
			System.out.println("2." + target);
			new QustionsOkController().execute(req, resp);
			
//			질문 목록으로 이동 
		}else if(target.equals("/qustions")) {
			System.out.println("2." + target);
			result = new Result();	
			result.setPath("/templates/member/myPageQuestions.jsp");
			
//			답변 목록의 데이터를 전송
		}else if(target.equals("/answersOk")) {
			System.out.println("2." + target);
			new AnswersOkController().execute(req, resp);
			
//			답변 목록으로 이동
		}else if(target.equals("/answers")) {
			System.out.println("2." + target);
			result = new Result();	
			result.setPath("/templates/member/myPageAnswers.jsp");
			
//			관심 질문 목록의 데이터를 전송
		}else if(target.equals("/scrapOk")) {
			System.out.println("2." + target);
			new ScrapOkController().execute(req, resp);
			
//			관심 질문 목록으로 이동 
		}else if(target.equals("/scraps")) {
			System.out.println("2." + target);
			result = new Result();	
			result.setPath("/templates/member/myPageScraps.jsp");
			
		}else {
			System.out.println("3. " + target);
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
