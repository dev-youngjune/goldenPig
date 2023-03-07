package com.goldenPig.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;

public class AdminBannerDetailController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		Long bannerId = Long.parseLong(req.getParameter("bannerId"));
		
		req.setAttribute("banner", adminDAO.adminBannerSelect(bannerId));
		
		result.setPath("/templates/admin/adminPage-bannerDetail.jsp");
		return result;
	}

}
