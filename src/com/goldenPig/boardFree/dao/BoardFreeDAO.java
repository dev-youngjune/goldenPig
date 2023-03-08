package com.goldenPig.boardFree.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.boardFree.domain.BoardFreeDTO;
import com.goldenPig.boardFree.domain.BoardFreeReplyDTO;
import com.goldenPig.mybatis.config.MyBatisConfig;


public class BoardFreeDAO {
	public SqlSession sqlSession;
	
	public BoardFreeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	게시글 목록
	public List<BoardFreeDTO> selectAllSearch(Map<String, Object> pageMap){
		List<BoardFreeDTO> result = null;
		try {
			result = sqlSession.selectList("boardFree.selectAllSearch", pageMap);
		} catch (Exception e) {
			System.err.println("selectAllSearch error");
			e.printStackTrace();
		} 
		return result;
	}
	
//	게시글 목록
	public List<BoardFreeDTO> selectAll(){
		List<BoardFreeDTO> result = null;
		try {
			result = sqlSession.selectList("boardFree.selectAll");
		} catch (Exception e) {
			System.err.println("selectAll error");
			e.printStackTrace();
		} 
		return result;
	}
	
//	게시글 목록
	public List<BoardFreeDTO> selectAll(Map<String, Object> pageMap){
		List<BoardFreeDTO> result = null;
		try {
			result = sqlSession.selectList("boardFree.selectAllSearch", pageMap);
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
		return sqlSession.selectOne("boardFree.getTotal", pageMap);
	}
	
//	게시글 댓글 수
	public Long getReplyCount(Long boardId) {
		return sqlSession.selectOne("boardFree.getReplyCount", boardId);
	}
	
//	게시글 작성
	public void insertBoard(Map<String, Object> boardMap) {
		sqlSession.insert("boardFree.insertBoard", boardMap);
	}
	
//	각 게시글 이미지 가져오기
	public List<BoardFreeDTO> selectAllImgsByBoardId(Long boardId) {
		return sqlSession.selectList("boardFreeImg.selectAllByBoardId", boardId);
	}
	
//	게시글 상세보기
	public BoardFreeDTO selectOneByBoardId(Long boardId) {
		return sqlSession.selectOne("boardFree.selectOneByBoardId", boardId);
	}
	
//	현재 시퀀스 조회
	public Long getCurrentSequence() {
		return sqlSession.selectOne("boardFree.getCurrentSequence");
	}
	
	public List<BoardFreeReplyDTO> selectAllRepliesByBoardId(Long boardId) {
		return sqlSession.selectList("boardFree.selectAllRepliesByBoardId", boardId);
	}

//	로그인한 memberId와 boardId를 이용해 좋아요, 관심 여부
//	public BoardFreeReplyDTO selectOneByBoardIdForLike(Map<String, Long> likeInfo) {
//		return sqlSession.selectOne("boardFree.selectOneByBoardIdForLike", likeInfo);
//	}
	
	public boolean isLikedFreeBoard(Map<String, Long> likeInfo) {
		return sqlSession.selectOne("like.isLikedBoardFree", likeInfo) != null;
	}
	
	public void deleteLike(Map<String, Long> likeInfo) {
		sqlSession.delete("like.deleteLikeBoardFree", likeInfo);
	}
	
	public void insertLike(Map<String, Long> likeInfo) {
		sqlSession.delete("like.insertLikeBoardFree", likeInfo);
	}
	
	public Long getLikeCountFreeByBoardId(Long boardId) {
		return sqlSession.selectOne("like.getLikeCountFreeByBoardId", boardId);
	}
	
	
}