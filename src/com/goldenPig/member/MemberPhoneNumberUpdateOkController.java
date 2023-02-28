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

public class MemberPhoneNumberUpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		
		Long memberId = (Long)req.getSession().getAttribute("memberId");
		memberDAO.updatePhoneNumber(memberId, req.getParameter("memberPhoneNumber"));
		
		return null;
	}

}
