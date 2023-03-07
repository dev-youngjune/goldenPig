 package com.goldenPig.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

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
		System.out.println("들어옴1");
//		Long user = (Long)req.getSession().getAttribute("memberId");
		
//		Long memberId = (Long)req.getSession().getAttribute("memberId");
		
		Long memberId = 2L;	
		req.getSession().setAttribute("memberId", 2L);
		
		System.out.println("들어옴2");
//		---------------------------------------------
//		마이페이지 왼쪽 사이드 조회 
		req.setAttribute("memberSide", mypageDAO.selectSide(memberId));
//		req.setAttribute("memberSide", mypageDAO.selectSide(memberId));
		
		
//		모달 프로필 정보 조회
		req.setAttribute("modalProfile", mypageDAO.selectModalProfile(memberId));
//		req.setAttribute("modalSelect", new JSONObject(mypageDAO.selectModalProfile(memberId)).toString());
		
		
//		저축목표 조회
//		mypageDAO.selectMoney(memberId);
		req.setAttribute("money",mypageDAO.selectMoney(memberId));
		System.out.println("들어옴3");
		System.out.println(moneyVO.getMoneyTarget());
		
		
		result.setPath("/templates/member/myPage.jsp");
		result.setRedirect(false);
		return result;
	}

}
