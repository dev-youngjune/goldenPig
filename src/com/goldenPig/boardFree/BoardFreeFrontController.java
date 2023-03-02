package com.goldenPig.boardFree;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.ExtractPath;
import com.goldenPig.Result;

@SuppressWarnings("serial")
public class BoardFreeFrontController extends HttpServlet{
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = ExtractPath.extractWithDot(req);
		System.out.println("1. " + target);
		Result result = null;
		
		switch(target) {
			case "/boardList.boardFree":
				System.out.println("2. " + target);
				result = new BoardFreeListController().execute(req, resp);
				break;
			case "/boardWrite.boardFree":
				System.out.println("2. " + target);
				result = new BoardFreeWriteController().execute(req, resp);
				break;
			case "/boardWriteOk.boardFree":
				System.out.println("2. " + target);
				result = new BoardFreeWriteOkController().execute(req, resp);
				break;
			case "/boardAnswer.boardFree":
				System.out.println("2. " + target);
				result = new BoardFreeAnswerController().execute(req, resp);
				break;
			case "/boardAnswerOk.boardFree":
				System.out.println("2. " + target);
				result = new BoardFreeAnswerOkController().execute(req, resp);
				break;
			case "/boardDetail.boardFree":
				System.out.println("2. " + target);
				result = new BoardFreeDetailController().execute(req, resp);
				break;
			case "/boardDetailOk.boardFree":
				System.out.println("2. " + target);
				result = new BoardFreeDetailOkController().execute(req, resp);
				break;
			case "/boardModify.boardFree":
				System.out.println("2. " + target);
				result = new BoardFreeModifyController().execute(req, resp);
				break;
			case "/boardModifyOk.boardFree":
				System.out.println("2. " + target);
				result = new BoardFreeModifyOkController().execute(req, resp);
				break;
			default:
				System.out.println("3. " + target);
				System.err.println("cant find path");
				break;
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}else {
			System.err.println("result == null");
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
//		String uri = req.getRequestURI();
//		String contextPath = req.getContextPath();
//		String targetTemp = uri.substring(contextPath.length());
//		String target = uri.replace(contextPath, "").split("\\.")[0];
		
//		if(target.equals("/boardList")) {result = new BoardListController().execute(req, resp);
//		}else if(target.equals("/boardWrite")) {result = new BoardWriteController().execute(req, resp);
//		}else if(target.equals("/boardWriteOk")) {result = new BoardWriteOkController().execute(req, resp);
//		}else if(target.equals("/boardAnswer")) {result = new BoardAnswerController().execute(req, resp);
//		}else if(target.equals("/boardAnswerOk")) {result = new BoardAnswerOkController().execute(req, resp);
//		}else if(target.equals("/boardDetail")) {result = new BoardDetailController().execute(req, resp);
//		}else if(target.equals("/boardDetailOk")) {result = new BoardDetailOkController().execute(req, resp);
//		}else if(target.equals("/boardModify")) {result = new BoardModifyController().execute(req, resp);
//		}else if(target.equals("/boardModifyOk")) {result = new BoardModifyOkController().execute(req, resp);
//		}else {System.out.println(target);}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
}
