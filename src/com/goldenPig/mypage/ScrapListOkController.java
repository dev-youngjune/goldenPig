package com.goldenPig.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.mypage.dao.MypageDAO;
import com.goldenPig.mypage.domain.MypageDTO;

public class ScrapListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
//		ScrapDTO scrapDTO = new ScrapDTO();
		MypageDTO mypageDTO = new MypageDTO();
		
		
//		final Long USER = (Long)req.getSession().getAttribute("memberId");
		
		final Long USER = 2L;	
		
		System.out.println("들어옴");
//		req.setAttribute("scrapList", mypageDAO.selectScraps(USER));
		
		
		result.setPath(req.getContextPath() + "/templates/member/myPageScraps.jsp");
		return null;
	}

}
