package com.goldenPig.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;

public class AdminMemberListDeleteOkController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AdminDAO adminDAO = new AdminDAO();
		
		String[] arr = req.getParameterValues("memberIdArr");
		
		for (int i = 0; i < arr.length; i++) {
			adminDAO.adminMemberDelete(Long.parseLong(arr[i]));
		}
		
		return null;
	}

}

