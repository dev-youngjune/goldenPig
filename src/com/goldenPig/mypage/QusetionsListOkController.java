package com.goldenPig.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

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
		
//		Long memberId = (Long)req.getSession().getAttribute("memberId");
		
		
		Long memberId = 1L;	
		req.getSession().setAttribute("memberId", 1L);
		
//		---------------------------------------------
//		마이페이지 왼쪽 사이드 조회 
		req.setAttribute("memberSide", mypageDAO.selectSide(memberId));
		
//		질문리스트 카운트
		req.setAttribute("questionsListCount", mypageDAO.questionCount(memberId));
		
//		질문 리스트 조회 
		System.out.println("들어옴");
		req.setAttribute("questionList", mypageDAO.selectQuestions(memberId));
//		req.setAttribute("questionList", new JSONObject(mypageDAO.selectQuestions(memberId)).toString());
		
		
		
		result.setPath("templates/member/myPageQuestions.jsp");
		result.setRedirect(false);
		return result;
	}

}
