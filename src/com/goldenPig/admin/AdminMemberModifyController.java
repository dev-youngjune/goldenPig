package com.goldenPig.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.member.dao.MemberDAO;

public class AdminMemberModifyController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		String uri = req.getRequestURI();
		result.setPath("/templates/admin/adminPage-modifyMember.jsp");
		result.setRedirect(FORWORD);
		return result;
	}
	
	
	
}