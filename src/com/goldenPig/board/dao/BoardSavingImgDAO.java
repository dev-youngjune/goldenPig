package com.goldenPig.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.board.domain.BoardSavingImgVO;
import com.goldenPig.mybatis.config.MyBatisConfig;

public class BoardSavingImgDAO {
	public SqlSession sqlSession;
	
	public BoardSavingImgDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	첨부파일 조회
	public List<BoardSavingImgVO> select(Long boardId) {
		return sqlSession.selectList("boardSavingImg.select", boardId);
	}
}
