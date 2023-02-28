package com.goldenPig.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.banner.dao.BannerDAO;
import com.goldenPig.banner.domain.BannerVO;

public class MainController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		BannerDAO bannerDao = new BannerDAO();
		List<BannerVO> listBannerVO = bannerDao.selectAllByStatus(1L);
		req.setAttribute("banners", bannerDao);
		result.setPath("${pageContext.request.contextPath}/templates/main.jsp");
		result.setRedirect(FORWORD);
		return result;
	}

}
