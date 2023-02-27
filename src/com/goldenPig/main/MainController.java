package com.goldenPig.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.banner.dao.BannerDAO;

public class MainController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		BannerDAO bannerDao = new BannerDAO();
		bannerDao.selectAllByStatus(1L);
		
		return result;
	}

}
