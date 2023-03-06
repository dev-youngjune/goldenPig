package com.goldenPig.boardFree.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.boardFree.domain.BoardFreeImgVO;
import com.goldenPig.mybatis.config.MyBatisConfig;

public class BoardFreeImgDAO {
	public SqlSession sqlSession;
	
	public BoardFreeImgDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	첨부파일 조회
	public List<BoardFreeImgVO> select(Long boardId) {
		return sqlSession.selectList("boardFreeImg.select", boardId);
	}
	
//	첨부파일 추가
	public void insert(BoardFreeImgVO imgVO) {
		sqlSession.insert("file.insert", imgVO);
	}
}
