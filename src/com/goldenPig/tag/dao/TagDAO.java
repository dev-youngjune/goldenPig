package com.goldenPig.tag.dao;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.mybatis.config.MyBatisConfig;

public class TagDAO {
	public SqlSession sqlSession;
	
	public TagDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
