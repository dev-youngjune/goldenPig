package com.goldenPig.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;
import com.goldenPig.notice.domain.NoticeVO;

public class AdminNoticeModifyOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		NoticeVO noticeVO = new NoticeVO();
		Long noticeId = Long.parseLong(req.getParameter("noticeId"));
		
		req.setAttribute("page", req.getParameter("page"));
		
		noticeVO.setNoticeId(noticeId);
		noticeVO.setNoticeTitle(req.getParameter("noticeTitle"));
		noticeVO.setNoticeContent(req.getParameter("noticeContent"));
		adminDAO.adminNoticeUpdate(noticeVO);
		
		result.setPath(req.getContextPath() + "/adminNoticeList.admin");
		return result;
	}

}
