package com.goldenPig.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;
import com.goldenPig.notice.domain.NoticeVO;

public class AdminNoticeWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		NoticeVO noticeVO = new NoticeVO();
		String noticeTitle = req.getParameter("noticeTitle");
		String noticeContent = req.getParameter("noticeContent");
		String noticeRequired = req.getParameter("noticeRequired");
		
		noticeVO.setNoticeTitle(noticeTitle);
		noticeVO.setNoticeContent(noticeContent);
		adminDAO.adminNoticeInsert(noticeVO);
		
		result.setPath(req.getContextPath() + "/adminNoticeList.admin");
		return result;
	}

}
