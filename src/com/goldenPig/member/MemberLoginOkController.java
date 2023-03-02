package com.goldenPig.member;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.member.dao.MemberDAO;

public class MemberLoginOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
		String memberEmail = req.getParameter("memberEmail");
		String memberPassword = new String(Base64.getEncoder().encode(req.getParameter("memberPassword").getBytes()));
		
		Long memberId = memberDAO.login(memberEmail, memberPassword);
		String path = null;
		Result result = new Result();
		
		if(memberId != null) {
			session.setAttribute("memberId", memberId);
			path = req.getContextPath() + "/index.main";
		}else {
			path = req.getContextPath() + "/login.member?login=false";
		}
		result.setPath(path);
		result.setRedirect(true);
		return result;
	}
}
