package com.goldenPig.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.main.dao.MainDAO;

public class MainController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
//		BannerDAO bannerDao = new BannerDAO();
//		List<BannerVO> listBannerVO = bannerDao.selectAllByStatus(1L);
//		req.setAttribute("banners", listBannerVO);
		
		setAttrBanner(req, resp);
		
		result.setPath("/templates/main.jsp");
		result.setRedirect(FORWORD);
		return result;
	}
	
	public void setAttrBanner(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MainDAO mainDAO = new MainDAO();
		JSONArray bannerJsons = new JSONArray();
		mainDAO.selectAllBanners().stream().map(banner -> new JSONObject(banner)).forEach(bannerJsons::put);
		
		req.setAttribute("banners", bannerJsons.toString());
	}

}
