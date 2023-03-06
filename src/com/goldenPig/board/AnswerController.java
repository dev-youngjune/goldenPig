package com.goldenPig.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.board.dao.BoardDAO;
import com.mysql.cj.x.protobuf.MysqlxCrud.Insert;

public class AnswerController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
//		String uri = req.getRequestURI();
		BoardDAO boardDAO = new BoardDAO();
		Long memberId = (Long)req.getSession().getAttribute("memberId");
		memberId = memberId == null ? 1L : memberId;
//		boardDAO.getMemberVO(memberId);
		String boardInfo = new JSONObject(boardDAO.getMemberVO(memberId)).toString();
		System.out.println(boardInfo);
		req.setAttribute("boardInfo", boardInfo);
		
		result.setPath(req.getContextPath() + "/board_detail.jsp");
		result.setRedirect(false);
		return result;
		
	}

}
