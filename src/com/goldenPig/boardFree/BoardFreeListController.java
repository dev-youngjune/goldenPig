package com.goldenPig.boardFree;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.boardFree.dao.BoardFreeDAO;

public class BoardFreeListController implements Action {
	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		BoardFreeDAO boardFreeDAO = new BoardFreeDAO();
		
		paging(req, resp);
//		req.setAttribute("boards", boardFreeDAO.selectAll());
		
		result.setPath("/templates/board/board_list_free.jsp");
		result.setRedirect(FORWORD);
		return result;
	}
	
	public void paging(HttpServletRequest req, HttpServletResponse resp) {
		BoardFreeDAO boardFreeDAO = new BoardFreeDAO();
		JSONArray jsons = new JSONArray();
		try {
			boardFreeDAO.selectAll().stream().map(board -> new JSONObject(board)).forEach(jsons::put);
		} catch (NullPointerException e) {
			System.err.println("paging stream err");
			e.printStackTrace();
		}
		req.setAttribute("boards", jsons.toString());
	}

}
