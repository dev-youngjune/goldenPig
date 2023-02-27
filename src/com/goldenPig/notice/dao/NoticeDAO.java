package com.goldenPig.notice.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.mybatis.config.MyBatisConfig;
import com.goldenPig.notice.domain.NoticeVO;


public class NoticeDAO {
	public SqlSession sqlSession;
	
	public NoticeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

//	공지사항 전체 조회
	public List<NoticeVO> selectAll(Map<String, Object> pageMap) {
		return sqlSession.selectList("notice.selectAll", pageMap);
	}
	
//	게시글 총 개수
	public Long getTotal() {
		return sqlSession.selectOne("notice.getTotal");
	}
	
}