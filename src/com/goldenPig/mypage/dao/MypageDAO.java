package com.goldenPig.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.board.domain.BoardVO;
import com.goldenPig.member.domain.MemberVO;
import com.goldenPig.mybatis.config.MyBatisConfig;
import com.goldenPig.mypage.domain.MoneyDTO;
import com.goldenPig.mypage.domain.MoneyVO;
import com.goldenPig.mypage.domain.MypageDTO;

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
	public void selectModalProfile(MoneyDTO moneyDTO) {
		sqlSession.selectOne("mypage.selectProfile", moneyDTO);
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
	public List<BoardVO> selectQuestions(Long memberId) {
		return sqlSession.selectList("mypage.selectQuestions", memberId);
	}
	
//	답변 목록
	public List<AnswerVO> selectAnswers(Long memberId) {
		return sqlSession.selectList("mypage.selectAnswers", memberId);
	}
	
//	관심 질문 목록
	public void selectScraps() {
		
	}
	
}
