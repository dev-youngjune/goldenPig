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
				result = new ListController().execute(req, resp);
				break;
			case "/boardListOk.boardFree":
				System.out.println("2. " + target);
				result = new ListOkController().execute(req, resp);
				break;
			case "/boardWrite.boardFree":
				System.out.println("2. " + target);
				result = new WriteController().execute(req, resp);
				break;
			case "/boardWriteOk.boardFree":
				System.out.println("2. " + target);
				result = new WriteOkController().execute(req, resp);
				break;
			case "/boardDetail.boardFree":
				System.out.println("2. " + target);
				result = new DetailController().execute(req, resp);
				break;
			case "/boardDetailOk.boardFree":
				System.out.println("2. " + target);
				result = new DetailOkController().execute(req, resp);
				break;
			case "/boardModify.boardFree":
				System.out.println("2. " + target);
				result = new ModifyController().execute(req, resp);
				break;
			case "/boardModifyOk.boardFree":
				System.out.println("2. " + target);
				result = new ModifyOkController().execute(req, resp);
				break;
			case "/boardLikeOk.boardFree":
				System.out.println("2. " + target);
				/* result = */new LikeOkController().execute(req, resp);
				break;
//			case "/boardFavoriteOk.boardFree":
//				System.out.println("2. " + target);
//				result = new FavoriteOkController().execute(req, resp);
//				break;
//			case "/boardReplyOk.boardFree":
//				System.out.println("2. " + target);
//				result = new ReplyOkController().execute(req, resp);
//				break;
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
			System.out.println("is this Ajax?");
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
