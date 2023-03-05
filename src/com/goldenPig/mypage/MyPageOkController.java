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
import com.goldenPig.mypage.domain.MypageDTO;

public class MyPageOkController implements Action {

	public void getInfo(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MypageDAO mypageDAO = new MypageDAO();
		MemberVO memberVO = new MemberVO();
		MoneyVO moneyVO = new MoneyVO();
		
//		final Long USER = (Long)req.getSession().getAttribute("memberId");
		final Long USER = 1L;
		JSONObject mypageJSON = new JSONObject(mypageDAO.selectSide(USER));
		
		
		
		
//		---------------------------------------------
//		마이페이지 왼쪽 사이드 조회 
		req.setAttribute("memberSide", mypageJSON.toString());
		
//		저축목표 조회
		mypageDAO.selectMoney(USER);
		req.setAttribute("money",new JSONObject(mypageDAO.selectMoney(USER)).toString());
		
//		모달 프로필 정보 조회
		mypageDAO.selectModalProfile(USER);
		req.setAttribute("modalSelect", new JSONObject(mypageDAO.selectModalProfile(USER)).toString());
		
	}
	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		
		getInfo(req, resp);
		
		
		result.setPath("/templates/member/myPage.jsp");
		result.setRedirect(false);
		return result;
	}

}
