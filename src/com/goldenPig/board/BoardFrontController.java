package com.goldenPig.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Result;

import jdk.jfr.Name;

@SuppressWarnings("serial")
public class BoardFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String targetTemp = uri.substring(contextPath.length());
		String target = uri.replace(contextPath , "").split("\\.")[0];
		Result result = null;
		System.out.println(targetTemp);
		System.out.println(target);
		
		if(target.equals("/boardList")) {
			result = new Result();
			new BoardListController();
		}else if(target.equals("/boardWrite")) {
			new BoardWriteController();
		}else if(target.equals("/boardWriteOk")) {
			new BoardWriteOkController();
		}else if(target.equals("/boardAnswer")) {
			new BoardAnswerController();
		}else if(target.equals("/boardAnswerOk")) {
			new BoardAnswerOkController();
		}else if(target.equals("/boardDetail")) {
			new BoardDetailController();
		}else if(target.equals("/boardDetailOk")) {
			new BoardDetailOkController();
		}else if(target.equals("/boardModify")) {
			new BoardModifyController();
		}else if(target.equals("/boardModifyOk")) {
			new BoardModifyOkController();
		}else {
			System.out.println(target);
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
