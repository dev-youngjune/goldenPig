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
		
		
		String boardId = req.getParameter("boardId");
		result.setPath("/templates/board/board_detail.jsp?boardId="+ boardId);
		result.setRedirect(FORWORD);
		return result;
	}
	public void detail(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		
		
		
		
		
		
	}

}
