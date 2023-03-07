package com.goldenPig.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;
import com.goldenPig.member.domain.MemberVO;

public class AdminMemberListDeleteController implements Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		MemberVO memberVO = new MemberVO();
		Long memberId = Long.parseLong(req.getParameter("memberId"));
		
		req.setAttribute("adminMember", memberVO);
		req.setAttribute("page", req.getParameter("page"));
		
		result.setPath("/templates/admin/adminPage-memberList.jsp");
		return null;
	}
}
