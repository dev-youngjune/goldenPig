package com.goldenPig.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;

public class AnswerOkController implements Action {
	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();

		result.setPath(req.getContextPath() + "/boardAnswer.board");
		result.setRedirect(false);
		
		return result;
	}
	
}
