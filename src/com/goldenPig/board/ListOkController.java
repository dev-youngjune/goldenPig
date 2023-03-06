package com.goldenPig.board;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.board.dao.BoardDAO;
import com.goldenPig.board.dao.BoardSavingImgDAO;
import com.goldenPig.board.domain.BoardDTO;

public class ListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
//		Long memberId = 1L;
//		req.setAttribute("member_id", memberId);
//		쿠키를 만드는 쪽
//		String memberId = req.getParameter("memberId");
//		Cookie cookie = new Cookie("memberId", memberId);
		
//		resp.addCookie(cookie);
		
//		req.getSession().setAttribute("member_id", req.getAttribute("member_id"));
//		req.getSession().getAttribute("member_id");
		
//		paging(req);
		realPaging(req, resp);
		
		result.setPath("templates/board/board_list.jsp");
		result.setRedirect(FORWORD);
		return result;
	}
	
	
	public void realPaging(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardSavingImgDAO imgDAO = new BoardSavingImgDAO();
		BoardDAO boardDAO = new BoardDAO();
		JSONArray boardJsons = new JSONArray();
		JSONObject fileJsons = new JSONObject();
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		Map<String, Object> searchMap = new HashMap<String, Object>();
		List<BoardDTO> boardList = null;
		
		String tag = req.getParameter("tag");
		String keyword = req.getParameter("keyword");
		String temp = req.getParameter("page"); 
		String[] tags = null;
		
		tags = tag == null || tag.equals("null") ? null : tag.split("&");
		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		
		searchMap.put("keyword", keyword);
		searchMap.put("tags", tags);
		
		Long total = boardDAO.getTotal(searchMap);
		
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 5;
		
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 5;
		int startRow = page * rowCount + 1;
		
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		boolean prev = startPage > 1;
		boolean next = false;
		endPage = endPage > realEndPage ? realEndPage : endPage;
		next = endPage != realEndPage;
		
		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
		pageMap.put("keyword", keyword);
		pageMap.put("tags", tags);
		
		boardList = boardDAO.selectAll(pageMap);
		
//		JSONObject jsonObj = new JSONObject(mypageDTO);
		
		boardList.stream().map(board -> new JSONObject(board)).forEach(boardJsons::put);
		
		boardList.stream().map(BoardDTO::getBoardId).map(imgDAO::select).collect(Collectors.toList())
			.stream().filter(files -> files.size() != 0).map(files -> files.get(0)).map(file -> new JSONObject(file))
			.forEach(json -> {
				try {
					fileJsons.put(String.valueOf(json.get("boardId")), json);
				} catch (JSONException e) {
					e.printStackTrace();
				}	
			});
		
//		req.setAttribute("userInfo", jsonObj.toString());
//		${userInfo.userId}
		
		req.setAttribute("boards", boardJsons.toString());
		req.setAttribute("files", fileJsons.toString());
		req.setAttribute("total", total);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
//		${page}
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("keyword", keyword);
		req.setAttribute("tag", tag);
	}
	
	public String cutDate(String date) {
		String result = null;
		result = date.replaceAll(date.substring(date.length()-3), "");
		return result;
	}
	
	public void paging(HttpServletRequest req) {
		BoardDAO boardDAO = new BoardDAO();
		JSONArray jsons = new JSONArray();
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		String tag = req.getParameter("tag");
		String keyword = req.getParameter("keyword");
		String temp = req.getParameter("page");
//		String sort = req.getParameter("sort");
		String[] tags = null;
		
		tags = tag == null || tag.equals("null") ? null : tag.split("&");
		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		
		searchMap.put("keyword", keyword);
		searchMap.put("tags", tags);
		
		Long total = boardDAO.getTotal(searchMap);
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
		pageMap.put("tags", tags);
		
		List<BoardDTO> dtos = boardDAO.selectAllSearch(pageMap); 
		
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
		req.setAttribute("tag", tag);
	}

}
