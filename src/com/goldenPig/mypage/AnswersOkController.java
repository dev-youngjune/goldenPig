package com.goldenPig.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

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
		
//		Long user = (Long)req.getSession().getAttribute("memberId");
		
		final Long USER = 1L;
		
		Long memberId = (Long)req.getSession().getAttribute("memberId");
		JSONObject mypageJSON = new JSONObject(mypageDAO.selectSide(memberId));

//		---------------------------------------------
//		마이페이지 왼쪽 사이드 조회 
		req.setAttribute("memberSide", mypageJSON.toString());
		
		
		System.out.println("들어옴");
//		req.setAttribute("answerList", mypageDAO.selectAnswers(USER));
		req.setAttribute("answerList", new JSONObject(mypageDAO.selectAnswers(USER)).toString());
		
		
		
		
		
		result.setPath("templates/member/myPageAnswers.jsp");
		result.setRedirect(false);
		return result;
	}

}
