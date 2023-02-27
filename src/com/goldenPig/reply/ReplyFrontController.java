package com.goldenPig.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Result;

@SuppressWarnings("serial")
public class ReplyFrontController extends HttpServlet {
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath , "").split("\\.")[0];
		Result result = null;
	
		if(target.equals("/Reply")) {
			result = new ReplyConstroller();
		
		}else if(target.equals("/ReplyList")) {
			result = new ReplyListController();
			
		}else if(target.equals("/ReplyRegisterOk")) {
			result = new ReplyRegisterOkController();
			
		}else if(target.equals("/ReplyUpdateOk")) {
			result = new ReplyUpdateOkController();
					
		}else if(target.equals("/ReplyDeleteOk")) {
			result = new ReplyDeleteOkController();

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
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
}
