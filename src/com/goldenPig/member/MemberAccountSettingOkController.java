package com.goldenPig.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.member.dao.MemberDAO;
import com.goldenPig.member.domain.MemberVO;

public class MemberAccountSettingOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Long memberId = (Long)req.getSession().getAttribute("memberId");
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = memberDAO.select(memberId);		
		
		req.setAttribute("memberName", memberVO.getMemberName());
		req.setAttribute("memberNickName", memberVO.getMemberName());
		req.setAttribute("memberEmail", memberVO.getMemberEmail());
		req.setAttribute("memberPhoneNumber", memberVO.getMemberPhoneNumber());
		req.setAttribute("memberBirth", memberVO.getMemberBirth());
		
		result.setPath("/templates/account/account_setting.jsp");
		result.setRedirect(false);
		
		return result;
	}

}
