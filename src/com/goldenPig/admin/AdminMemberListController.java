package com.goldenPig.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.admin.dao.AdminDAO;
import com.goldenPig.member.dao.MemberDAO;

public class AdminMemberListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AdminDAO adminDAO = new AdminDAO();
		MemberDAO memberDAO = new MemberDAO(); 

		Result result = new Result();
		JSONArray jsons = new JSONArray();
		
		Map<String, Object> pageMap = new HashMap<String, Object>();

		String temp = req.getParameter("page"); 
		String sort = req.getParameter("sort");
		String[] types = null;
		
		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		
//		모든 멤버의 수
		Long total = adminDAO.getTotalMember();
		
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 5;
		
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 5;
		int startRow = (page - 1) * rowCount;
		
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		boolean prev = startPage > 1;
		boolean next = false;
		endPage = endPage > realEndPage ? realEndPage : endPage;
		next = endPage != realEndPage;
		
//		sort = sort == null ? "recent" : sort;
		
		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
		pageMap.put("sort", sort);
		
		adminDAO.selectAll().stream().map(member -> new JSONObject(member)).forEach(jsons::put);
		
		req.setAttribute("members", jsons.toString());
		req.setAttribute("total", total);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("sort", sort);
		
		result.setPath("/templates/admin/adminPage-memberList.jsp");
		result.setRedirect(false);
		return result;
	}

}
