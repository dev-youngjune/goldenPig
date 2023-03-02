package com.goldenPig.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.member.dao.MemberDAO;

public class MemberFindIdOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		Result result = new Result();
		String memberPhoneNumber = req.getParameter("memberPhoneNumber");
		String memberName = req.getParameter("memberName");
		Long memberId = memberDAO.findMemberId(memberPhoneNumber,memberName);
		
		if(memberId != null) {

			req.setAttribute("memberId", memberId);
			result.setPath(req.getContextPath() + "/password.member");
		}else {

			req.setAttribute("phoneNumberCheck", true);
			result.setPath(req.getContextPath() + "/login.member");
		}
		
		
		result.setRedirect(false);
		return result;
	}

}
