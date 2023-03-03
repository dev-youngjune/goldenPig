package com.goldenPig.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.member.domain.MemberVO;
import com.goldenPig.mypage.dao.MypageDAO;
import com.goldenPig.mypage.domain.MoneyVO;

public class MyPageOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
		MemberVO memberVO = new MemberVO();
		MoneyVO moneyVO = new MoneyVO();
		final Long USER = 1L;
		
//		mypageDAO.select(memberId); 
//		req.setAttribute("name", "이순철");
//		System.out.println(req.getContextPath());

//		req.getSession().setAttribute("memberId", memberId);
		
		moneyVO = mypageDAO.selectMoney(USER);
		
		memberVO = mypageDAO.select(USER);
		System.out.println("222222222222222222");
		
		System.out.println("들옴");
		System.out.println(moneyVO);
		System.out.println(moneyVO.getMoneyAmount());
		
		req.setAttribute("meberInfo", memberVO);
		req.setAttribute("memberMoney", mypageDAO.selectMoney(USER));
		
		result.setPath(req.getContextPath() + "/mypage.mypage");
		result.setRedirect(false);
		return result;
	}

}
