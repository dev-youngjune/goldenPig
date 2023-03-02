package com.goldenPig.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.member.dao.MemberDAO;

public class MemberWithdrawalOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		
		Long memberId = (Long)req.getSession().getAttribute("memberId");
		memberDAO.withdrawal(memberId);
		
		result.setPath(req.getContextPath() + "/index.main");
		result.setRedirect(true);
		
		return result;
	}

}
