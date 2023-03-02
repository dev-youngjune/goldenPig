package com.goldenPig.boardFree.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.board.domain.BoardDTO;


public class BoardFreeDAO {
	public SqlSession sqlSession;
	
//	게시글 목록
	public List<BoardDTO> selectAllSearch(Map<String, Object> pageMap){
		List<BoardDTO> result = null;
		try {
			result = sqlSession.selectList("boardFree.selectAllSearch", pageMap);
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
			result = sqlSession.selectList("boardFree.selectAll");
		} catch (Exception e) {
			System.err.println("selectAll error");
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
	
}