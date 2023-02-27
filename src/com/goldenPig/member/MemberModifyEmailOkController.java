package com.goldenPig.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.member.dao.MemberDAO;
import com.goldenPig.member.domain.MemberVO;

public class MemberModifyEmailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		Result result = new Result();
		Long memberId = (Long)req.getSession().getAttribute("memberId");
		System.out.println(memberId);
		System.out.println(req.getParameter("memberEmail"));
		
		memberDAO.updateEmail(memberId, req.getParameter("memberEmail"));
		
		result.setPath(req.getContextPath() + "/modifyOk.member");
		result.setRedirect(true);
		
		return result;
	}

}
