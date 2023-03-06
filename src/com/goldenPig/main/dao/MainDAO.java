package com.goldenPig.main.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.banner.domain.BannerVO;
import com.goldenPig.mybatis.config.MyBatisConfig;

public class MainDAO {
	public SqlSession sqlSession;
	
	public MainDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<BannerVO> selectAllBanners() {
		return sqlSession.selectList("banner.selectAllByStatus", 1);		
	}
	
}
