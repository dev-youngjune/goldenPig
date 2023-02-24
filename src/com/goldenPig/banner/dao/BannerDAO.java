package com.goldenPig.banner.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.mybatis.config.MyBatisConfig;


public class BannerDAO {
	public SqlSession sqlSession;
	
	public BannerDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}