package com.goldenPig.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.ExtractPath;
import com.goldenPig.Result;

@SuppressWarnings("serial")
public class MainFrontController extends HttpServlet {
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = ExtractPath.extractWithDot(req);
		Result result = null;
		
		if(target.equals("/index.main")) {
			result = new MainController().execute(req, resp);
//			result.setPath("templates/main.jsp");
//			result.setRedirect(true);
//		}else if(target.equals("")) {
			
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
