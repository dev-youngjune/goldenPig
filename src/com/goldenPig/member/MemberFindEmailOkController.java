package com.goldenPig.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.member.dao.MemberDAO;

public class MemberFindEmailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		String memberPhoneNumber = req.getParameter("memberPhoneNumber");
		String memberName = req.getParameter("memberName");
		Long memberId = memberDAO.findMemberId(memberPhoneNumber, memberName);
		
		if(memberId != null) {
			String memberEmail = memberDAO.findEmail(memberId);
			req.setAttribute("memberEmail", memberEmail);
			result.setPath(req.getContextPath() + "/findEmailAccount.member");
		}else {
			req.setAttribute("memberEmailCheck", true);
			result.setPath(req.getContextPath() + "/login.member");
		}
		result.setRedirect(false);
		return result;
	}

}
