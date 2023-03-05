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
import com.goldenPig.mypage.domain.MypageDTO;

public class MyPageOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
		MemberVO memberVO = new MemberVO();
		MoneyVO moneyVO = new MoneyVO();
		MypageDTO mypageDTO = new MypageDTO();
		final Long USER = 1L;
		
//		mypageDAO.select(memberId); 
//		req.setAttribute("name", "이순철");
//		System.out.println(req.getContextPath());

//		req.getSession().setAttribute("memberId", memberId);
		
		moneyVO = mypageDAO.selectMoney(USER);
		
		memberVO = mypageDAO.select(USER);
		System.out.println(moneyVO);
		
		
//		---------------------------------------------
//		마이페이지 왼쪽 사이드 조회 
		mypageDTO = mypageDAO.selectSide(USER);
//		req.getParameter(memberId);
		
//		저축목표 조회
//		mypageDAO.selectMoney(USER);
		
//		모달 프로필 정보 조회
//		mypageDAO.selectModalProfile(USER);
		
//		모달프로필 멤버 정보 수정
//		mypageDAO.updateModalProfile(memberVO);
		
//		모달프로필 저축 목표 수정 
//		mypageDAO.updateModalMoney(moneyVO);
		
		
		
		
		
		
		req.setAttribute("meberInfo", memberVO);
		req.setAttribute("memberMoney", mypageDAO.selectMoney(USER));
		
		
		
		result.setPath("/templates/member/myPage.jsp");
		result.setRedirect(false);
		return result;
	}

}
