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
	
//	아이디 중복검사
	public boolean checkId(String memberEmail) {
		return sqlSession.selectOne("member.checkId", memberEmail) != null;
	}
	
// 핸드폰 중복검사
	public boolean checkPhoneNumber(String memberPhoneNumber) {
		return sqlSession.selectOne("member.checkPhoneNumber", memberPhoneNumber) != null;
	}
	
// 로그인
//	로그인
	public Long login(String memberEmail, String memberPassword) {
		Map<String, String> loginMap = new HashMap<String, String>();
		loginMap.put("memberEmail", memberEmail);
		loginMap.put("memberPassword", memberPassword);
		return sqlSession.selectOne("member.login", loginMap);
	}
}