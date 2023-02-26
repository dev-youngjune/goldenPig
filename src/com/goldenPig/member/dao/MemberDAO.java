package com.goldenPig.member.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.member.domain.MemberVO;
import com.goldenPig.mybatis.config.MyBatisConfig;


public class MemberDAO {
	public SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	회원가입
	public void join(MemberVO memberVO) {
		sqlSession.insert("member.join", memberVO);
	}
}