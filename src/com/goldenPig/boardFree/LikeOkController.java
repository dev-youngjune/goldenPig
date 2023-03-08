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

public class LikeOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		ajax(req, resp);
		
		
		
		return null;
	}
	
	public void ajax(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardFreeDAO boardFreeDAO  = new BoardFreeDAO();
		Long boardId = Long.valueOf(req.getParameter("boardId"));
		Long memberId = Long.valueOf(req.getParameter("memberId"));
		Map<String, Long> likeInfo = new HashMap<String, Long>();
		likeInfo.put("boardId", boardId);
		likeInfo.put("memberId", memberId);
		
		boolean isLiked = boardFreeDAO.isLikedFreeBoard(likeInfo);
		
		if(isLiked) {
			boardFreeDAO.deleteLike(likeInfo);
		} else {
			boardFreeDAO.insertLike(likeInfo);
		}
		
//		boardFreeDAO.getLikeCountByBoardId(boardId);
		
	}

}
