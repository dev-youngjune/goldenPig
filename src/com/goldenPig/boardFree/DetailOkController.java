package com.goldenPig.boardFree;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.boardFree.dao.BoardFreeDAO;
import com.goldenPig.boardFree.domain.BoardFreeDTO;
import com.goldenPig.member.dao.MemberDAO;

public class DetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();

		detailOk(req, resp);

		result.setPath("/templates/board/board_detail.jsp");
		result.setRedirect(FORWORD);

		return result;
	}

	public void detailOk(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardFreeDAO boardFreeDAO = new BoardFreeDAO();
		MemberDAO memberDAO = new MemberDAO();
		Long boardId = Long.parseLong(req.getParameter("boardId"));
		BoardFreeDTO dto = boardFreeDAO.selectOneByBoardId(boardId);

		Long memberId = (Long)req.getSession().getAttribute("memberId");
		
		req.setAttribute("board", "free");
		req.setAttribute("boardInfo", new JSONObject(dto).toString());
		req.setAttribute("memberVO", new JSONObject(memberDAO.select(memberId)).toString());
		req.setAttribute("replyDTOs", new JSONObject().toString());
		
//		return boardId;
	}

}
