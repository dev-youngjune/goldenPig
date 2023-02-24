package com.goldenPig.memberImg.dao;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.mybatis.config.MyBatisConfig;

public class MemberImgDAO {
	public SqlSession sqlSession;
	
		
	public MemberImgDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}