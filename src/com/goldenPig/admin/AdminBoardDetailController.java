package com.goldenPig.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;
import com.goldenPig.admin.domain.AdminBoardDTO;

public class AdminBoardDetailController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		AdminBoardDTO adminBoardDTO = new AdminBoardDTO();
		Long boardId = Long.parseLong(req.getParameter("boardId"));
		
		adminBoardDTO = adminDAO.adminBoardSelect(boardId);
		
		req.setAttribute("board", adminBoardDTO);
		req.setAttribute("page", req.getParameter("page"));
		
		result.setPath("/templates/admin/adminPage-board.jsp");
		return result;
	}

}
