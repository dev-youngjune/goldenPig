package com.goldenPig.notice.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.mybatis.config.MyBatisConfig;
import com.goldenPig.notice.domain.NoticeVO;


public class NoticeDAO {
	public SqlSession sqlSession;
	
	public NoticeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<NoticeVO> selectAll() {
		return sqlSession.selectList("notice.selectAll");
	}
}