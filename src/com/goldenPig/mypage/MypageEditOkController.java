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
		
		
		
		Long memberId = (Long)req.getSession().getAttribute("memberId");
		
		
		boolean isUpdateNickName = memberVO.getMemberNickName() != req.getParameter("newNickName") && !(req.getParameter("newNickName") == "" || req.getParameter("newNickName") == null);
												//	기존의 닉네임 값과 newNickName 값이 다르면 업데이트 해라 	// 빈문자열이거나 널값이라면  false => update가 아니다!
//		boolean isUpdateImgName= memberVO.getMemberImgName() != req.getParameter() 
		boolean isUpdateGreeting = (memberVO.getMemberGreeting() != req.getParameter("newGreeting") || memberVO.getMemberGreeting() == null) && !(req.getParameter("newGreeting") == "" || req.getParameter("newGreeting") == null);
//									memberVO에서 실제로 있는 이미 들어가 있는 값이 새로운 값과 같지 않거나 			기존 값이 null인 경우  true 					가져온 값이 빈 문자열이거나 널값이라면  false => update가 아니다!						
		
		boolean isUpdateMoney = (Long.parseLong(moneyVO.getMoneyTarget() +"") != Long.parseLong(req.getParameter("newMoneyTarget"))  || ((Long)Long.parseLong(moneyVO.getMoneyTarget() + "") == null) && !(req.getParameter("newMoneyTarget") == "" || req.getParameter("newMoneyTarget") == null)); 
		boolean isInsertMoney = !((Long)Long.parseLong(moneyVO.getMoneyTarget() + "") == null) && !(req.getParameter("newMoneyTarget") == "" || req.getParameter("newMoneyTarget") == null);		
		
		
//		모달프로필 멤버 정보 수정
		if(isUpdateNickName || isUpdateGreeting) {
			memberVO.setMemberNickName(req.getParameter("newNickname"));
			memberVO.setMemberGreeting(req.getParameter("newGreeting"));
			mypageDAO.updateModalProfile(memberVO);
		}
		
		if(isUpdateMoney) {
		moneyVO.setMoneyTarget(Integer.parseInt(req.getParameter("newMoneyTarget")));
		moneyVO.setMoneyAmount(Integer.parseInt(req.getParameter("newMoneyAmount")));
		moneyVO.setMoneyRegisterDate(req.getParameter("newMoneyRegister"));
		moneyVO.setMoneyExpiryDate(req.getParameter("newMoneyExpiry"));
		
//		모달프로필 저축 목표 수정 
		mypageDAO.updateModalMoney(moneyVO);
		
		} else if(isInsertMoney) {
//			mypageDAO.insertMoney
		}
		

		

		
		
		
		
		
		
		result.setPath(req.getContextPath() + "/mypageOK.mypage");
		result.setRedirect(REDIRECT);
		return result;
	}

}
