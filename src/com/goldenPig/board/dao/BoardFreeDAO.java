package com.goldenPig.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.boardFree.domain.BoardFreeDTO;
import com.goldenPig.mybatis.config.MyBatisConfig;


public class BoardFreeDAO {
	public SqlSession sqlSession;
	
	public BoardFreeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	게시글 목록
	public List<BoardFreeDTO> selectAll(Map<String, Object> pageMap){
		return sqlSession.selectList("boardFree.selectAll", pageMap);
	}
	
//	게시글 목록+
	public List<BoardFreeDTO> selectAllList(Map<String, Object> pageMap){
		return sqlSession.selectList("boardFree.selectAllList", pageMap);
	}
	
//	게시글 총 개수
	public Long getTotal() {
		return sqlSession.selectOne("boardFree.getTotal");
	}
	
//	게시글 댓글 수
	public Long getReplyCount(Long boardId) {
		return sqlSession.selectOne("boardFree.getReplyCount", boardId);
	}
	
}