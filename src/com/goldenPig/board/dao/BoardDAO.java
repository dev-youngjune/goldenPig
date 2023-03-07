package com.goldenPig.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.board.domain.BoardDTO;
import com.goldenPig.board.domain.BoardDTO;
import com.goldenPig.board.domain.BoardReplyDTO;
import com.goldenPig.boardFree.domain.BoardFreeDTO;
import com.goldenPig.member.domain.MemberVO;
import com.goldenPig.mybatis.config.MyBatisConfig;


public class BoardDAO {
	public SqlSession sqlSession;
	
	public BoardDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
////	게시글 목록
//	public List<BoardDTO> selectAll(){
//		return sqlSession.selectList("board.selectAll");
//	}
//	
////	게시글 총 개수
//	public Long getTotal(Map<String, Object> searchMap) {
//		return sqlSession.selectOne("board.getTotal");
//	}
//	
////	게시글 댓글 수
//	public Long getReplyCount(Long boardId) {
//		return sqlSession.selectOne("board.getReplyCount", boardId);
//	}
	
//	관심글 갯수
//	public Integer favoriteCount(long boardId) {
//		return sqlSession.selectOne("board.favoriteCount", boardId);
//	}
//	답글 갯수
//	public Integer answerCount(long boardId) {
//		return sqlSession.selectOne("board.answerCount", boardId);
//	}
//	좋아요 갯수
//	public Integer likeCount(long boardId) {
//		return sqlSession.selectOne("board.likeCount", boardId);
//	}
	
//	public List<BoardDTO> allCounts() {
//		return sqlSession.selectList("board.boardList");
//	}
	
	public List<BoardDTO> listPage() {
		return sqlSession.selectList("board.boardList");
	}
	
//	게시글 작성
	public void insertBoard(Map<String, Object> boardMap) {
		sqlSession.insert("board.insertBoard", boardMap);
	}

//	게시글 목록
	public List<BoardDTO> selectAllSearch(Map<String, Object> pageMap){
		List<BoardDTO> result = null;
		try {
			result = sqlSession.selectList("board.selectAllSearch", pageMap);
		} catch (Exception e) {
			System.err.println("selectAllSearch error");
			e.printStackTrace();
		} 
		return result;
	}
	
//	게시글 목록
	public List<BoardDTO> selectAll(){
		List<BoardDTO> result = null;
		try {
			result = sqlSession.selectList("board.selectAll");
		} catch (Exception e) {
			System.err.println("selectAll error");
			e.printStackTrace();
		} 
		return result;
	}
	
//	게시글 목록
	public List<BoardDTO> selectAll(Map<String, Object> pageMap){
		List<BoardDTO> result = null;
		try {
			result = sqlSession.selectList("board.selectAllSearch", pageMap);
			System.out.println(result.toString());
		} catch (Exception e) {
			System.err.println("selectAll error");
			System.out.println(result);
			e.printStackTrace();
		} 
		return result;
	}
	
//	게시글 총 개수
	public Long getTotal(Map<String, Object> pageMap) {
		return sqlSession.selectOne("board.getTotal", pageMap);
	}
	
//	게시글 댓글 수
	public Long getReplyCount(Long boardId) {
		return sqlSession.selectOne("board.getReplyCount", boardId);
	}
//	답변
	/*
	 * public String answerImgPath(String memberImgPath) { return
	 * sqlSession.selectOne("board.answerImgPath", memberImgPath); }
	 * 
	 * public String answerNickName(String answerNickname) { return
	 * sqlSession.selectOne("board.answerNickname", answerNickname); }
	 * 
	 * public void answerContent(String answerContent) {
	 * sqlSession.insert("board.insertBoard", answerContent); }
	 */
	
	public MemberVO getMemberVO(Long memberId) {
		return sqlSession.selectOne("board.getMemberVO",memberId);
	}
	
//	public List<BoardDTO> selectAllImgsByBoardId(Long boardId) {
//		return sqlSession.selectList("boardImg.selectAllByBoardId", boardId);
//	}
	
//	게시글 상세보기
	public BoardDTO selectOneByBoardId(Long boardId) {
		return sqlSession.selectOne("board.selectOneByBoardId", boardId);
	}
	
//	현재 시퀀스 조회
	public Long getCurrentSequence() {
		return sqlSession.selectOne("board.getCurrentSequence");
	}
	
	public List<BoardReplyDTO> selectAllRepliesByBoardId(Long boardId) {
		return sqlSession.selectList("board.selectAllRepliesByBoardId", boardId);
	}
	
//	각 게시글 이미지 가져오기
	public List<BoardDTO> selectAllImgsByBoardId(Long boardId) {
		return sqlSession.selectList("boardImg.selectAllByBoardId", boardId);
	}
}
	
