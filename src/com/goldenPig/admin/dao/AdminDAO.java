package com.goldenPig.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.member.domain.MemberVO;
import com.goldenPig.mybatis.config.MyBatisConfig;

public class AdminDAO {

	public SqlSession sqlSession;
	
	public AdminDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<MemberVO> selectAll() {
		return sqlSession.selectList("admin.selectAll");
	}
	
	public Long getTotalMember() {
		return sqlSession.selectOne("admin.getTotalMember");
	}
	
}
