package com.goldenPig.banner.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.banner.domain.BannerVO;
import com.goldenPig.mybatis.config.MyBatisConfig;


public class BannerDAO {
	public SqlSession sqlSession;
	
	public BannerDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<BannerVO> selectAllByStatus() {
		return sqlSession.selectList("banner.selectAllByStatus");
	}
	
	public List<BannerVO> selectAll(){
		return sqlSession.selectList("banner,selectAll");
	}
	
	public BannerVO selectById(Long bannerId) {
		return sqlSession.selectOne("banner.select");
	}
}