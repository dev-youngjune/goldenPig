package com.goldenPig.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.member.domain.MemberVO;
import com.goldenPig.mypage.dao.MypageDAO;

public class MypageEditOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
		MemberVO memberVO = new MemberVO();
		
		Object reqNickname = req.getAttribute("newNickname");
		String nickname = (String) reqNickname;
		
//		
		memberVO.setMemberNickName(nickname);
//		memberVO.setMemberNickName((String)req.getAttribute("newNickname"));
		
	
		
//		mypageDAO.updateModalProfile();
		
		
		
		
		
		
		
		result.setPath("");
		result.setRedirect(REDIRECT);
		return result;
	}

}
