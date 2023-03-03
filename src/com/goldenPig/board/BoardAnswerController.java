package com.goldenPig.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;

public class BoardAnswerController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		String uri = req.getRequestURI();
		result.setPath(req.getContextPath() + "/board_detail.jsp");
		result.setRedirect(false);
		return result;
		
	}

}
