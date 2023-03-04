package com.goldenPig.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		AdminDAO adminDAO = new AdminDAO();
		MemberVO memberVo = new MemberVO();
		
//		
		String memberEmail = req.getParameter("memberEmail");
		String memberBirth = req.getParameter("memberBirth");
		String memberPhoneNumber = req.getParameter("memberPhoneNumber");
	    
		
		
		req.setAttribute("page", req.getParameter("page"));
		result.setPath("/templates/admin/adminPage-noticeWrite.jsp");
		return result;
	}
	
	
	
}