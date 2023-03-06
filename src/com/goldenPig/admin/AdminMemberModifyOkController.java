package com.goldenPig.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;
import com.goldenPig.member.dao.MemberDAO;
import com.goldenPig.member.domain.MemberVO;

public class AdminMemberModifyOkController implements Action {

// with 강사님
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberVO memberVO = new MemberVO();
		AdminDAO adminDAO = new AdminDAO();
		
//		회원정보 수정시 필요한 정보를 MemberVO에서 가져옴 이메일, 생년월일, 폰번호 

		Long memberId = Long.valueOf(req.getParameter("memberId")); 
		String memberEmail = req.getParameter("memberEmail");
		String memberBirth = req.getParameter("memberBirth");
		String memberPhoneNumber = req.getParameter("memberPhoneNumber");
		
		
		memberVO.setMemberId(memberId);
		memberVO.setMemberEmail(memberEmail);
		memberVO.setMemberBirth(memberBirth);
		memberVO.setMemberPhoneNumber(memberPhoneNumber);
		adminDAO.memberInfoChange(memberVO);
		
//		result.setPath("/templates/admin/adminPage-noticeWrite.jsp");
		result.setPath("/templates/admin/adminPage-modifyMember.jsp");
		
		return result;
	}
	
}
