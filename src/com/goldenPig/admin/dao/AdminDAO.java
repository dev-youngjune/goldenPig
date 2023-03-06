package com.goldenPig.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.admin.domain.AdminBoardDTO;
import com.goldenPig.banner.domain.BannerVO;
import com.goldenPig.member.domain.MemberVO;
import com.goldenPig.mybatis.config.MyBatisConfig;
import com.goldenPig.notice.domain.NoticeVO;

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
	
//	ㄱ관리자 저축 게시글 총 개수
	public Long getTotalSaving() {
		return sqlSession.selectOne("admin.getTotalSaving");
	}
	
//	관리자 자유 게시글 총 개수
	public Long getTotalFree() {
		return sqlSession.selectOne("admin.getTotalFree");
	}
	
//	관리자 관리자 공지사항 총 개수
	public Long getTotalNotice() {
		return sqlSession.selectOne("admin.getTotalNotice");
	}
	
//	관리자 배너 총 개수
	public Long getTotalBanner() {
		return sqlSession.selectOne("admin.getTotalBanner");
	}
	
//	관리자 관리자 공지사항 전체 조회
	public List<NoticeVO> adminNoticeSelectAll(Map<String, Object> pageMap) {
		return sqlSession.selectList("admin.adminNoticeSelectAll", pageMap);
	}
	
//	관리자 공지사항 상세보기
	public NoticeVO adminNoticeSelect(Long noticeId) {
		return sqlSession.selectOne("admin.adminNoticeSelect", noticeId);
	}
	
//	관리자 공지사항 수정
	public void adminNoticeUpdate(NoticeVO noticeVO) {
		sqlSession.update("admin.adminNoticeUpdate", noticeVO);
	}
	
//	관리자 공지사항 작성
	public void adminNoticeInsert(NoticeVO noticeVO) {
		sqlSession.insert("admin.adminNoticeInsert", noticeVO);
	}
	
//	관리자 공지사항 삭제
	public void adminNoticeDelete(Long noticeId) {
		sqlSession.delete("admin.adminNoticeDelete", noticeId);
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
	
//	관리자 배너 전체 조회
	public List<BannerVO> adminBannerSelectAll(Map<String, Object> pageMap){
		return sqlSession.selectList("admin.adminBannerSelectAll", pageMap);
	}
	
//	관리자 배너 등록
	public void adminBannerInsert(BannerVO bannerVO) {
		sqlSession.insert("admin.adminBannerInsert", bannerVO);
	}
	
//	관리자 배너 삭제
	public void adminBannerDelete(Long bannerId) {
		sqlSession.delete("admin.adminBannerDelete", bannerId);
	}
	
//	관리자 배너 토글 상태 수정
	public void adminBannerToggleUpdate(Map<String, Long> toggle) {
		System.out.println(toggle);
		
		sqlSession.update("admin.adminBannerToggleUpdate", toggle);
	}
	
//  관리자용 회원정보 수정

// 관리자용 회원정보 이메일 변경
	public void changeEmail(Long emailId) {
		sqlSession.update("email.update", emailId);
	}
// 관리자용 회원정보 생년월일 변경
	
// 관리자용 회원정보 전화번호 변경
	
// 관리자용 회원 정보 수정
}
