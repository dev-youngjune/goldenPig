package com.goldenPig.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.mypage.dao.MypageDAO;
import com.goldenPig.mypage.domain.MypageDTO;

public class AnswersOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
//		AnswerDTO answerDTO = new AnswerDTO();
		MypageDTO mypageDTO = new MypageDTO();
		
//		final Long USER = (Long)req.getSession().getAttribute("memberId");
		
		final Long USER = 2L;
		
		System.out.println("들어옴");
//		req.setAttribute("answerList", mypageDAO.selectAnswers(USER));
		
		
		
		
		
		
		result.setPath(req.getContextPath() + "/templates/member/myPageAnswers.jsp");
		result.setRedirect(false);
		return null;
	}

}
