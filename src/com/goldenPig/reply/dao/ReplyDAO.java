package com.goldenPig.reply.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.mybatis.config.MyBatisConfig;


public class ReplyDAO {
	public SqlSession sqlSession;
	
	public ReplyDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
