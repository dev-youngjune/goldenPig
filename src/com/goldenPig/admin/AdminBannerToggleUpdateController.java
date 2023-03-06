package com.goldenPig.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;

public class AdminBannerToggleUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AdminDAO adminDAO = new AdminDAO();
		Map<String, Long> toggle = new HashMap<String, Long>();
		Long bannerId = Long.parseLong(req.getParameter("bannerId"));
		Long count = Long.parseLong(req.getParameter("count"));
		
		toggle.put("bannerId", bannerId);
		toggle.put("count", count);

		adminDAO.adminBannerToggleUpdate(toggle);
		return null;
	}

}
