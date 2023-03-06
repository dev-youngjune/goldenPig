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
		
//		Long user = (Long)req.getSession().getAttribute("memberId");
		
		Long memberId = (Long)req.getSession().getAttribute("memberId");
		JSONObject mypageJSON = new JSONObject(mypageDAO.selectSide(memberId));

//		---------------------------------------------
//		마이페이지 왼쪽 사이드 조회 
		req.setAttribute("memberSide", mypageJSON.toString());
		
//		모달 프로필 정보 조회
//		mypageDAO.selectModalProfile(memberId);
		req.setAttribute("modalSelect", new JSONObject(mypageDAO.selectModalProfile(memberId)).toString());
		
//		저축목표 조회
//		mypageDAO.selectMoney(memberId);
		req.setAttribute("money",new JSONObject(mypageDAO.selectMoney(memberId)).toString());
		
		
		
		
		
		result.setPath(req.getContextPath() + "/templates/member/myPage.jsp");
		result.setRedirect(false);
		return result;
	}

}
