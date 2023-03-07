package com.goldenPig.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;

public class DetailController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		Long boardId = Long.parseLong(req.getParameter("boardId"));
		
		String contextPath = req.getContextPath();
		result.setPath(contextPath + "/boardDetailOk.board?boardId=" + boardId);
		result.setRedirect(REDIRECT);
		
		return result;
	}

}
