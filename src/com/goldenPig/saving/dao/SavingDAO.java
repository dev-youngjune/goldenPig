package com.goldenPig.saving.dao;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.mybatis.config.MyBatisConfig;

public class SavingDAO {
	
	public SqlSession sqlSession;
	
	public SavingDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	
	
}
