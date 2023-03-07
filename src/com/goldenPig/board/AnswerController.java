package com.goldenPig.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.board.dao.BoardDAO;
import com.goldenPig.member.domain.MemberVO;

public class AnswerController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		String uri = req.getRequestURI();
		
		req.setAttribute("boardId", answerPage(req, resp));
		
//		result.setPath(req.getContextPath() + "/templates/board/board_answer.jsp");
		result.setPath("/templates/board/board_answer.jsp");
		result.setRedirect(false);
		return result;
		
	}
	public Long answerPage(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardDAO boardDAO = new BoardDAO();
		Long memberId = (Long)req.getSession().getAttribute("memberId");
		Long boardId = Long.parseLong(req.getParameter("boardId"));
		System.out.println("boardId: " + boardId);
		
		memberId = memberId == null ? 1L : memberId;
//		boardDAO.getMemberVO(memberId);
		MemberVO mic = boardDAO.getMemberVO(memberId);
		if(mic.getMemberImgPath() == "") {
			mic.setMemberImgPath(null);
		}
		String boardInfo = new JSONObject(mic).toString();
		System.out.println(boardInfo);
		req.setAttribute("boardInfo", boardInfo);
		req.setAttribute("memberId", memberId);
		
		return boardId;
	}

}
