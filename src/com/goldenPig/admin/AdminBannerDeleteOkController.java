package com.goldenPig.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;

public class AdminBannerDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		JSONObject jsonObject = new JSONObject();
		AdminDAO adminDAO = new AdminDAO();

		String[] arr = req.getParameterValues("bannerIdArr");
		
		for (int i = 0; i < arr.length; i++) {
			adminDAO.adminBannerDelete(Long.parseLong(arr[i]));
		}

		return null;
	}

}
