package com.goldenPig.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;
import com.goldenPig.member.dao.MemberDAO;

public class AdminMemberModifyController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AdminDAO adminDAO = new AdminDAO();
		MemberDAO memberDAO = new MemberDAO();

		Result result = new Result();
		JSONArray jsons = new JSONArray();
		
		Map<String, Object> adminMemberModifyMap = new HashMap<String, Object>();
		
		
	}

}
