package com.goldenPig.boardFree;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.boardFree.dao.BoardFreeDAO;

public class BoardFreeWriteOkController implements Action{
	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		insertOk(req, resp);
		
		result.setPath(req.getContextPath() + "/boardListOk.boardFree");
		result.setRedirect(REDIRECT);
//		result.setRedirect(FORWORD);
		return result;
	}
	
	public void insertOk(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardFreeDAO boardFreeDAO = new BoardFreeDAO();
//		BoardFreeVO boardFreeVO = new BoardFreeVO();
		Map<String, Object> boardMap = new HashMap<String, Object>();
		
		Long memberId = 1L;
		
		boardMap.put("title", (String)req.getParameter("title"));
		boardMap.put("content", (String)req.getParameter("content"));
		boardMap.put("memberId", memberId);
		
//		boardMap.put("memberId", (Long)req.getSession().getAttribute("memberId"));
		
		
//		boardFreeVO.setBoardTitle((String)req.getAttribute("title"));
//		boardFreeVO.setBoardContent((String)req.getAttribute("content"));
//		boardFreeVO.setMemberId((Long)req.getSession().getAttribute("memberId"));
		
		boardFreeDAO.insertBoard(boardMap);
	}
	
}
