package com.goldenPig.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.board.dao.BoardDAO;
import com.goldenPig.board.domain.BoardDTO;

public class BoardListController implements Action {
	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ArrayList<BoardDTO> boardDTO = new ArrayList<BoardDTO>();
		ArrayList<Long> boardId = new ArrayList<Long>();
		ArrayList<Integer> favoriteCount = new ArrayList<Integer>();
		ArrayList<Integer> answerCount = new ArrayList<Integer>();
		ArrayList<Integer> likeCount = new ArrayList<Integer>();
		BoardDAO boardDAO = new BoardDAO();
		
		for (int i = 0; i < boardDAO.selectAll().size(); i++) {
			boardDTO.add(boardDAO.selectAll().get(i));
			boardId.add(boardDAO.selectAll().get(i).getBoardId());
		}
		
		for (int i = 0; i < boardId.size(); i++) {
			favoriteCount.add(boardDAO.favoriteCount(boardId.get(i)));
		}
		for (int i = 0; i < boardId.size(); i++) {
			answerCount.add(boardDAO.answerCount(boardId.get(i)));
		}
		for (int i = 0; i < boardId.size(); i++) {
			likeCount.add(boardDAO.answerCount(boardId.get(i)));
		}
		
		req.setAttribute("boards", boardDTO);
		req.setAttribute("favoriteCount", favoriteCount);
		req.setAttribute("answerCount", answerCount);
		req.setAttribute("likeCount", likeCount);
		
		result.setPath("/templates/board/board_list.jsp");
		
		return result;
	}
	

}
