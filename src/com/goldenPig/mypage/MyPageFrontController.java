package com.goldenPig.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Result;

public class MyPageFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath , "").split("\\.")[0];
		Result result = null;
		System.out.println("1." + target);
		
		
//			컨트롤러를 통해 마이 페이지로 데이터를 전송
//		if(target.equals("/mypage")) {
//			System.out.println("22." + target);
//			result = new Result();
//			result.setPath("/templates/member/myPage.jsp");
			
//			컨트롤러를 통해 마이 페이지로 데이터를 전송
		if(target.equals("/mypageOk")) {
			System.out.println("2." + target);
			result = new MyPageOkController().execute(req, resp);
			
//			마이 페이지 수정완료 컨트롤러
		}else if(target.equals("/editOk")) {
			System.out.println("3." + target);
			result = new MypageEditOkController().execute(req, resp);
//
			
//			질문 목록의 데이터를 전송
		}else if(target.equals("/questionOk")) {
			System.out.println("4." + target);
			result = new QusetionsOkController().execute(req, resp);
			
//			질문 목록으로 이동 
		}else if(target.equals("/questions")) {
			System.out.println("5." + target);
			result = new Result();	
			result.setPath("/templates/member/myPageQuestions.jsp");
			
//			답변 목록의 데이터를 전송
		}else if(target.equals("/answersOk")) {
			System.out.println("6." + target);
			result = new AnswersOkController().execute(req, resp);
			
//			답변 목록으로 이동
		}else if(target.equals("/answers")) {
			System.out.println("7." + target);
			result = new Result();	
			result.setPath("/templates/member/myPageAnswers.jsp");
			
//			관심 질문 목록의 데이터를 전송
		}else if(target.equals("/scrapOk")) {
			System.out.println("8." + target);
			result = new ScrapOkController().execute(req, resp);
			
//			관심 질문 목록으로 이동 
		}else if(target.equals("/scraps")) {
			System.out.println("9." + target);
			result = new Result();	
			result.setPath("/templates/member/myPageScraps.jsp");
			
		}else {
			System.out.println("0. " + target);
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
