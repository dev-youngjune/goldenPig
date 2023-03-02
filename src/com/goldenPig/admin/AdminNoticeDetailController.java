package com.goldenPig.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;
import com.goldenPig.notice.dao.NoticeDAO;
import com.goldenPig.notice.domain.NoticeVO;

public class AdminNoticeDetailController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		NoticeVO noticeVO = new NoticeVO();
		Long noticeId = Long.parseLong(req.getParameter("noticeId"));
		noticeVO = adminDAO.adminNoticeSelect(noticeId);
		
		req.setAttribute("adminNotice", noticeVO);
		req.setAttribute("page", req.getParameter("page"));
		
		result.setPath("/templates/admin/adminPage-notice.jsp");
		return result;
	}

}
