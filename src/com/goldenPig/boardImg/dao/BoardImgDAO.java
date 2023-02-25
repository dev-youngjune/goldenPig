package com.goldenPig.boardImg.dao;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.mybatis.config.MyBatisConfig;

public class BoardImgDAO {
	public SqlSession sqlSession;
	
	
	public BoardImgDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
