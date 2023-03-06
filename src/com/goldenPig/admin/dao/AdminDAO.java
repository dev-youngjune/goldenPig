package com.goldenPig.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.admin.domain.AdminBoardDTO;
import com.goldenPig.member.domain.MemberVO;
import com.goldenPig.mybatis.config.MyBatisConfig;
import com.goldenPig.notice.domain.NoticeVO;

public class AdminDAO {

	public SqlSession sqlSession;
	
	public AdminDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<MemberVO> selectAll(Map<String, Object> pageMap) {
		return sqlSession.selectList("admin.selectAll", pageMap);
	}
	
	public Long getTotalMember() {
		return sqlSession.selectOne("admin.getTotalMember");
	}
	
//	관리자 공지사항 전체 조회
	public List<NoticeVO> adminNoticeSelectAll(Map<String, Object> pageMap) {
		return sqlSession.selectList("notice.adminNoticeSelectAll", pageMap);
	}
	
//	게시글 총 개수
	public Long getTotal() {
		return sqlSession.selectOne("notice.getTotal");
	}
	
//	관리자 공지사항 상세보기
	public NoticeVO adminNoticeSelect(Long noticeId) {
		return sqlSession.selectOne("notice.adminNoticeSelect", noticeId);
	}
	
//	관리자 공지사항 수정
	public void adminNoticeUpdate(NoticeVO noticeVO) {
		sqlSession.update("notice.adminNoticeUpdate", noticeVO);
	}
	
//	관리자 공지사항 작성
	public void adminNoticeInsert(NoticeVO noticeVO) {
		sqlSession.insert("notice.adminNoticeInsert", noticeVO);
	}
	
//	관리자 공지사항 삭제
	public void adminNoticeDelete(Long noticeId) {
		sqlSession.delete("notice.adminNoticeDelete", noticeId);
	}
	
//	관리자 저축게시판 전체 목록
	public List<AdminBoardDTO> adminBoardSelectAll(Map<String, Object> pageMap) {
		return sqlSession.selectList("admin.adminBoardSelectAll", pageMap);
	}
	
//	관리자 저축게시물 상세보기
	public AdminBoardDTO adminBoardSelect(Long boardId) {
		return sqlSession.selectOne("admin.adminBoardSelect", boardId);
	}
	
//	관리자 자유게시판 전체 목록
	public List<AdminBoardDTO> adminFreeSelectAll(Map<String, Object> pageMap) {
		return sqlSession.selectList("admin.adminFreeSelectAll", pageMap);
	}
	
//	관리자 자유게시판 상세보기
	public AdminBoardDTO adminFreeSelect(Long boardId) {
		return sqlSession.selectOne("admin.adminFreeSelect", boardId);
	}
	
//	관리자 저축게시판 삭제
	public void adminBoardDelete(Long boardId) {
		sqlSession.delete("admin.adminBoardDelete", boardId);
	}
	
//	관리자 자유게시판 삭제
	public void adminFreeBoardDelete(Long boardId) {
		sqlSession.delete("admin.adminFreeBoardDelete", boardId);
	}
//  관리자용 회원정보 수정
	public void memberInfoChange(MemberVO memberVO) {
		sqlSession.update("admin.memberInfoChange", memberVO);
	}

// 관리자용 회원정보 이메일 변경
	public void changeEmail(Long emailId) {
		sqlSession.update("email.update", emailId);
	}

}
