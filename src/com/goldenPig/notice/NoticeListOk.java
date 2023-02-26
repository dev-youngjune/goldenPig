package com.goldenPig.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.notice.dao.NoticeDAO;

public class NoticeListOk implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		NoticeDAO noticeDAO = new NoticeDAO();

		req.setAttribute("notices", noticeDAO.selectAll());
		result.setPath("/templates/notice/notice.jsp");
		
		return result;
	}

}
