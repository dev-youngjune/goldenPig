package com.goldenPig.boardFree.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.board.domain.BoardDTO;
import com.goldenPig.mybatis.config.MyBatisConfig;


public class BoardFreeDAO {
	public SqlSession sqlSession;
	
	public BoardFreeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	게시글 목록
	public List<BoardDTO> selectAll(Map<String, Object> pageMap){
		return sqlSession.selectList("board.selectAll", pageMap);
	}
	
//	게시글 총 개수
	public Long getTotal() {
		return sqlSession.selectOne("board.getTotal");
	}
	
	public void name() {
		sqlSession.selectOne("");
		return;
	}
	
}