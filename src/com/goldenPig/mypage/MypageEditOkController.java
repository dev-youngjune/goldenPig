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

public class MypageEditOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
		MemberVO memberVO = new MemberVO();
		MoneyVO moneyVO = new MoneyVO();
		
		Object reqNickname = req.getAttribute("newNickname");
		String nickname = (String) reqNickname;
		
		
		
		memberVO.setMemberNickName(req.getParameter("newNickname"));
		memberVO.setMemberGreeting(req.getParameter("newGreeting"));
		
//		moneyVO.setMoneyTarget(req.getParameter("newMoneyTarget"));
//		
//		moneyVO.setMoneyAmount(req.getParameter("newMoneyAmount"));
//		moneyVO.setMoneyRegisterDate(req.getParameter("newMoneyRegister"));
//		moneyVO.setMoneyExpiryDate(req.getParameter("newMoneyExpiry"));
		
		
		
//		모달프로필 멤버 정보 수정
		mypageDAO.updateModalProfile(memberVO);
		
		
//		모달프로필 저축 목표 수정 
		mypageDAO.updateModalMoney(moneyVO);
		
		
		
		
		
		
		
		result.setPath("");
		result.setRedirect(false);
		return result;
	}

}
