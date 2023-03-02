package com.goldenPig.member;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.member.dao.MemberDAO;

public class MemberPasswordOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		Long memberId = (Long)req.getSession().getAttribute("memberId");
		String memberPassword = new String (Base64.getEncoder().encode(req.getParameter("memberPassword").getBytes()));
		
		if(memberId != null) {
			memberDAO.updatePassword(memberId, memberPassword);
		}else {
			req.setAttribute("passwordChangeCheck", true);
			memberId = Long.parseLong(req.getParameter("memberId"));
			memberDAO.updatePassword(memberId, memberPassword);
		}
		
		req.getSession().invalidate();
		result.setPath(req.getContextPath() + "/login.member");
		result.setRedirect(true);
		
		return result;
	}

}
