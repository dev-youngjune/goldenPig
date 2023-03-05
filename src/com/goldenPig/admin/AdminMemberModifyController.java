package com.goldenPig.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;
import com.goldenPig.board.dao.BoardDAO;
import com.goldenPig.member.dao.MemberDAO;
import com.goldenPig.member.domain.MemberVO;

public class AdminMemberModifyController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		sendInfo(req, resp);
		
		
//		회원정보 수정시 필요한 정보를 MemberVO에서 가져옴 이메일, 생년월일, 폰번호 
//		String memberEmail = req.getParameter("memberEmail");
//		String memberBirth = req.getParameter("memberBirth");
//		String memberPhoneNumber = req.getParameter("memberPhoneNumber");
		
//		memberVO.setMemberEmail(memberEmail);
//		memberVO.setMemberBirth(memberBirth);
//		memberVO.setMemberPhoneNumber(memberPhoneNumber);
		
//		result.setPath("/templates/admin/adminPage-noticeWrite.jsp");
		result.setPath("/templates/admin/adminPage-modifyMember.jsp");
		
		return result;
	}
	
	public void sendInfo(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
//		AdminDAO adminDAO = new AdminDAO();
		Long memberId = (Long)req.getAttribute("memberId");
		MemberDAO memberDAO = new MemberDAO();
		MemberVO member = memberDAO.select(memberId);
		req.setAttribute("memberEmail", member.getMemberEmail());
		req.setAttribute("memberBirth", member.getMemberBirth());
		req.setAttribute("memberPhoneNumber", member.getMemberPhoneNumber());
		req.setAttribute("memberName", member.getMemberName());
	}
}