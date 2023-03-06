package com.goldenPig.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Result;

public class BoardFrontController extends HttpServlet {

//	private HttpServletResponse response;

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath , "").split("\\.")[0];
		Result result = null;
		System.out.println(target);
		if (target.equals("/boardList")) {
			result = new ListController().execute(req, resp);
			
		} else if (target.equals("/boardListOk")) {
			result = new ListOkController().execute(req, resp);
			
		} else if (target.equals("/boardWrite")) {
			result = new WriteController().execute(req, resp);
			
		} else if (target.equals("/boardWriteOk")) {
			result = new WriteOkController().execute(req, resp);
			
		} else if (target.equals("/boardAnswer")) {
			result = new AnswerController().execute(req, resp);
			
		} else if (target.equals("/boardAnswerOk")) {
			result = new AnswerOkController().execute(req, resp);
			
		} else if (target.equals("/boardDetail")) {
			result = new DetailController().execute(req, resp);
			
		} else if (target.equals("/boardDetailOk")) {
			result = new DetailOkController().execute(req, resp);
			
		} else if (target.equals("/boardModify")) {
			result = new ModifyController().execute(req, resp);
			
		} else if (target.equals("/boardModifyOk")) {
			result = new ModifyOkController().execute(req, resp);
			
		} else {
			System.out.println(target);
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
