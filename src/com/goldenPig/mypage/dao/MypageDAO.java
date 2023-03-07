package com.goldenPig.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.answer.domain.SavingAnswerVO;
import com.goldenPig.board.domain.BoardVO;
import com.goldenPig.member.domain.MemberVO;
import com.goldenPig.mybatis.config.MyBatisConfig;
import com.goldenPig.mypage.domain.MoneyDTO;
import com.goldenPig.mypage.domain.MoneyVO;
import com.goldenPig.mypage.domain.MypageDTO;
import com.goldenPig.mypage.domain.QuestionDTO;
import com.goldenPig.mypage.domain.ScrapDTO;

public class MypageDAO {
	public SqlSession sqlSession;
	
	public MypageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public MemberVO select(Long memberId) {
		return sqlSession.selectOne("mypage.select", memberId);
		
	}
	
	
//	마이 페이지 왼쪽 사이드 조회 
	public MypageDTO selectSide(Long memberId) {
		return sqlSession.selectOne("selectSide", memberId);
	}
	
//	저축 목표 조회
	public MoneyVO selectMoney(Long memberId) {
		return sqlSession.selectOne("mypage.selectMoney", memberId);
	}
	
//	모달 프로필 정보 조회
	public MoneyDTO selectModalProfile(Long memberId) {
		return sqlSession.selectOne("mypage.selectModalProfile",memberId);
	}
	
//	모달 프로필 이미지 삭제
	public void deleteImg() {
		
	}
	
//	모달 프로필 이미지 추가 
	public void insertImg() {
		
	}
	
//	모달 프로필 멤버 정보 수정 
	public void updateModalProfile(MemberVO memberVO) {
		sqlSession.update("mypage.updateModalProfile", memberVO);
	}
	
// 모달 프로필 저축 목표 수정 
	public void updateModalMoney(MoneyVO moneyVO) {
		sqlSession.update("mypage.updateModalMoney", moneyVO);
	}
	
//	질문 목록 
	public List<QuestionDTO> selectQuestions(Long memberId) {
		return sqlSession.selectList("mypage.selectQuestions", memberId);
	}
	
//	질문 목록 카운트
	public Long questionCount(Long memberId) {
		return sqlSession.selectOne("mypage.questionCount",memberId);
	}
	
//	답변 목록
	public List<SavingAnswerVO> selectAnswers(Long memberId) {
		return sqlSession.selectList("mypage.selectAnswers", memberId);
	}
	
//	관심 질문 목록
	public List<ScrapDTO> selectScraps(Long memberId) {
		return sqlSession.selectList("mypage.selectScraps", memberId);
	}
	
}
