package com.goldenPig.boardFree.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.boardFree.domain.BoardFreeDTO;
import com.goldenPig.boardFree.domain.BoardFreeVO;
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
	
	
	
}