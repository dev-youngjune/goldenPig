package com.goldenPig.boardFree;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.boardFree.dao.BoardFreeDAO;
import com.goldenPig.boardFree.domain.BoardFreeDTO;

public class BoardFreeListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();

		paging(req);
		
		result.setPath("templates/board/board_list_free.jsp");
		result.setRedirect(FORWORD);
		return result;
	}
	
	public void paging(HttpServletRequest req) {
		BoardFreeDAO boardFreeDAO = new BoardFreeDAO();
		JSONArray jsons = new JSONArray();
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		Map<String, Object> searchMap = new HashMap<String, Object>();

		String type = req.getParameter("type");
		String keyword = req.getParameter("keyword");
		String temp = req.getParameter("page"); 
//		String sort = req.getParameter("sort");
		String[] types = null;
		
		types = type == null || type.equals("null") ? null : type.split("&");
		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		
		searchMap.put("keyword", keyword);
		searchMap.put("types", types);
		
		Long total = boardFreeDAO.getTotal(searchMap);
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
//		pageMap.put("sort", sort);
		pageMap.put("keyword", keyword);
		pageMap.put("types", types);
		
		List<BoardFreeDTO> dtos = boardFreeDAO.selectAllSearch(pageMap); 
		
		dtos.stream().forEach(board -> board.setBoardRegisterDate(cutDate(board.getBoardRegisterDate())));
		dtos.stream().map(board -> new JSONObject(board)).forEach(jsons::put);
		
		
		req.setAttribute("boards", jsons.toString());
		req.setAttribute("total", total);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
//		req.setAttribute("sort", sort);
		req.setAttribute("keyword", keyword);
		req.setAttribute("type", type);
	}
	
	public String cutDate(String date) {
		String result = null;
		result = date.substring(date.length()-3);
		return result;
	}
	

}
