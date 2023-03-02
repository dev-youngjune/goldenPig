package com.goldenPig.mypage.dao;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.member.domain.MemberVO;
import com.goldenPig.mybatis.config.MyBatisConfig;

public class MypageDAO {
	public SqlSession sqlSession;
	
	public MypageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
		
		
	}	
	
//	회원 조회 
	public MemberVO select(Long meberId) {
		return sqlSession.selectOne("mypage.select", meberId);
	}
	
	
//	회원 삭제
	public void delete(Long memberId) {
		 sqlSession.update("mypage.delete", memberId);
	}
	

}
