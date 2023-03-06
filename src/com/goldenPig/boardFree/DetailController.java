package com.goldenPig.boardFree;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.boardFree.dao.BoardFreeDAO;
import com.goldenPig.boardFree.domain.BoardFreeDTO;

public class DetailController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		detailOk(req, resp);
		
//		String contextPath = req.getContextPath();
		result.setPath("/boardDetailOk.boardFree?boardId=");
		result.setRedirect(FORWORD);
		
		return result;
	}
	
	public Long detailOk(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardFreeDAO boardFreeDAO = new BoardFreeDAO();
		Long boardId = Long.parseLong(req.getParameter("boardId"));
		BoardFreeDTO dto = boardFreeDAO.selectOneByBoardId(boardId);
		
		req.setAttribute("boardInfo", new JSONObject(dto).toString());
		
		
		
		
		
		
		
		
		
		
		
		
		return boardId;
	}

}
