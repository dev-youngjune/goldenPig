package com.goldenPig.boardFree;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.boardFree.dao.BoardFreeDAO;

public class WriteController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		result.setPath("templates/board/board_write_free.jsp");
		result.setRedirect(FORWORD);
		return result;
	}
	
	public void writeOk(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
//		BoardFreeDAO boardFreeDAO = new BoardFreeDAO();
//		Long boardId = Long.parseLong(req.getParameter("boardId"));
//		boardFreeDAO.selectOneByBoardId(boardId);
		
		
		
		
	}

}
