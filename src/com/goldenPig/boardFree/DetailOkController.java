package com.goldenPig.boardFree;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.goldenPig.Action;
import com.goldenPig.Result;
import com.goldenPig.boardFree.dao.BoardFreeDAO;
import com.goldenPig.boardFree.domain.BoardFreeDTO;
import com.goldenPig.member.dao.MemberDAO;
import com.goldenPig.member.domain.MemberVO;

public class DetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();

		try {
			detailOk(req, resp);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		result.setPath("/templates/board/board_detail.jsp");
		result.setRedirect(FORWORD);

		return result;
	}

	public void detailOk(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException, JSONException {
		BoardFreeDAO boardFreeDAO = new BoardFreeDAO();
		MemberDAO memberDAO = new MemberDAO();
		Long boardId = Long.parseLong(req.getParameter("boardId"));
		System.out.println(boardId);
		BoardFreeDTO dto = boardFreeDAO.selectOneByBoardId(boardId);
		JSONArray replyJsons = new JSONArray();
		JSONObject dtoJson = new JSONObject(dto);
//		Map<String, Long> likeInfo = new HashMap<String, Long>();
		
		Long memberId = (Long)req.getSession().getAttribute("memberId");
		
		memberId = memberId == null ? 1L : memberId;
		System.out.println("memberId : "+ memberId);
		MemberVO memberVO = memberDAO.select(memberId);
		String memberVOJson = new JSONObject(memberVO).toString();
		
//		likeInfo.put("memberId", memberId);
//		likeInfo.put("boardId", boardId);
		
		boardFreeDAO.selectAllRepliesByBoardId(boardId).stream().map(reply -> new JSONObject(reply)).forEach(replyJsons::put);

		
//		보드 타입
		req.setAttribute("boardType", "free");
		
//		board의 게시자 및 게시글 정보
		System.out.println(dtoJson.toString());
		req.setAttribute("boardInfo", dtoJson.toString());
		
//		세션 아이디 정보
		req.setAttribute("memberVO", memberVOJson);
		
//		댓글 정보
		System.out.println("replyDTOs : " + replyJsons.toString());
		req.setAttribute("replyDTOs", replyJsons.toString());
		
//		좋아요 정보
//		req.setAttribute("likeInfo", new JSONObject(boardFreeDAO.selectOneByBoardIdForLike(likeInfo)).toString());
	}

}
