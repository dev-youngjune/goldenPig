package com.goldenPig.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Result;

public class MemberFrontController extends HttpServlet {
	
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		System.out.println(contextPath);
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("/join")) {
			result = new Result();
			result.setPath("/templates/member/join.jsp");
		}else if(target.equals("/checkIdOk")) {

		}else if(target.equals("/JoinOk")) {
			result = new MemberJoinOkController().execute(req, resp);
		}else if(target.equals("/login")) {
			result = new Result();
			result.setPath("/templates/member/login.jsp");
		}else if(target.equals("/loginOk")) {
			
		}else if(target.equals("/modify")) {
			
		}else if(target.equals("/modifyOk")) {

		}else if(target.equals("/logoutOk")) {

		}else if(target.equals("/selectOk")) {

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
		super.doPost(req, resp);
	}
}
