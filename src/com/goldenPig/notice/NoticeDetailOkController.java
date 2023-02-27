package com.goldenPig.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.notice.dao.NoticeDAO;

public class NoticeDetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		NoticeDAO noticeDAO = new NoticeDAO();
		
		req.setAttribute("notice", noticeDAO.select(Long.parseLong(req.getParameter("noticeId"))));
		
		result.setPath("/templates/notice/noticeContent.jsp");
		return result;
	}

}
