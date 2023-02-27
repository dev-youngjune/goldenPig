package com.goldenPig.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.ExtractPath;
import com.goldenPig.ExtractURI;
import com.goldenPig.Result;

import jdk.jfr.Name;

@SuppressWarnings("serial")
public class BoardFrontController extends HttpServlet{
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = ExtractPath.extractWithDot(req);
		System.out.println("1. " + target);
		Result result = null;
		
		switch(target) {
			case "/boardList.board":
				System.out.println(target);
				result = new BoardListController().execute(req, resp);
				break;
			case "/boardWrite.board":
				System.out.println(target);
				result = new BoardWriteController().execute(req, resp);
				break;
			case "/boardWriteOk.board":
				System.out.println(target);
				result = new BoardWriteOkController().execute(req, resp);
				break;
			case "/boardAnswer.board":
				System.out.println(target);
				result = new BoardAnswerController().execute(req, resp);
				break;
			case "/boardAnswerOk.board":
				System.out.println(target);
				result = new BoardAnswerOkController().execute(req, resp);
				break;
			case "/boardDetail.board":
				System.out.println(target);
				result = new BoardDetailController().execute(req, resp);
				break;
			case "/boardDetailOk.board":
				System.out.println(target);
				result = new BoardDetailOkController().execute(req, resp);
				break;
			case "/boardModify.board":
				System.out.println(target);
				result = new BoardModifyController().execute(req, resp);
				break;
			case "/boardModifyOk.board":
				System.out.println(target);
				result = new BoardModifyOkController().execute(req, resp);
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
	

//	@Override
//	public String extractWithExt(HttpServletRequest req) {
//		String target = req.getRequestURI().substring(req.getContextPath().length());
//		return target;
//	}
//
//	@Override
//	public String extractWithoutExt(HttpServletRequest req) {
//		String target = req.getRequestURI().replace(req.getContextPath(), "").split("\\.")[0];
//		return target;
//	}
}
