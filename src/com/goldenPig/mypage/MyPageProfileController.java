package com.goldenPig.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.member.domain.MemberVO;
import com.goldenPig.mypage.dao.MypageDAO;

public class MyPageProfileController implements Action {
	
	 @Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		 MypageDAO mypageDAO = new MypageDAO();
		 MemberVO memberVO = new MemberVO();
		 
		 Long memberId = (Long)req.getSession().getAttribute("memberId");
		 mypageDAO.select(memberId);
		 
		 
		 
		return null;
	}

}
