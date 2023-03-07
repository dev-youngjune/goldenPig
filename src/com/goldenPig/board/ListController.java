package com.goldenPig.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.board.dao.BoardDAO;

public class ListController implements Action {
	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		BoardDAO boardDAO = new BoardDAO();
		
		String path = req.getContextPath();
		
		result.setPath(path + "/boardListOk.board");
		result.setRedirect(REDIRECT);
		return result;
	}
	
//	public void paging(HttpServletRequest req, HttpServletResponse resp) {
//		BoardDAO boardDAO = new BoardDAO();
//		JSONArray jsons = new JSONArray();
//		try {
//			boardDAO.selectAll().stream().map(board -> new JSONObject(board)).forEach(jsons::put);
//		} catch (NullPointerException e) {
//			System.err.println("paging stream err");
//			e.printStackTrace();
//		}
//		req.setAttribute("boards", jsons.toString());
//		System.out.println(jsons.toString());
//	}

}
