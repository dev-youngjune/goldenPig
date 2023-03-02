package com.goldenPig.mypage.dao;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.member.domain.MemberVO;
import com.goldenPig.mybatis.config.MyBatisConfig;

public class MypageDAO {
	public SqlSession sqlSession;
	
	public MypageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public MemberVO select(Long memberId) {
		return sqlSession.selectOne("mypage.select", memberId);
		
	}
	
	
//	프로필 편집 눌렀을시 프로필 편집 모달창 활성화 
	public void selectModal() {
		
	}
	
//	프로필 이미지 추가 (모달 내부)
	public void insertImg() {
		
	}
	
//	프로필 편집 수정 (모달 내부)
	public void updateProfileEdit() {
		
	}
	
//	프로필 편집 저장 (모달 내부)
	public void insertProfileSave() {
		
	}
	
//	질문 목록으로 이동
	public void selectQustions() {
		
	}
	
//	답변 목록으로 이동 
	public void selectAnswers() {
		
	}
	
//	관심 질문목록으로 이동 
	public void selectScraps() {
		
	}
	
}
