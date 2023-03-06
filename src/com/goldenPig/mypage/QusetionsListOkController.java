package com.goldenPig.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.board.dao.BoardDAO;
import com.goldenPig.mypage.dao.MypageDAO;
import com.goldenPig.mypage.domain.MypageDTO;
import com.goldenPig.mypage.domain.QuestionDTO;

public class QusetionsListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
		QuestionDTO questionDTO = new QuestionDTO();
		MypageDTO mypageDTO = new MypageDTO();
		
//		final Long USER = (Long)req.getSession().getAttribute("memberId");
		
		final Long USER = 1L;
		
		
		System.out.println("들어옴");
		req.setAttribute("questionList", mypageDAO.selectQuestions(USER));
		
		
		
		
		
		result.setPath( "/templates/member/myPageQuestions.jsp");
		return result;
	}

}
