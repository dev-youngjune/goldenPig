package com.goldenPig.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.goldenPig.board.domain.BoardDTO;
import com.goldenPig.mybatis.config.MyBatisConfig;


public class BoardDAO {
	public SqlSession sqlSession;
	
	public BoardDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
////	게시글 목록
//	public List<BoardDTO> selectAll(){
//		return sqlSession.selectList("board.selectAll");
//	}
//	
////	게시글 총 개수
//	public Long getTotal(Map<String, Object> searchMap) {
//		return sqlSession.selectOne("board.getTotal");
//	}
//	
////	게시글 댓글 수
//	public Long getReplyCount(Long boardId) {
//		return sqlSession.selectOne("board.getReplyCount", boardId);
//	}
	
//	관심글 갯수
//	public Integer favoriteCount(long boardId) {
//		return sqlSession.selectOne("board.favoriteCount", boardId);
//	}
//	답글 갯수
//	public Integer answerCount(long boardId) {
//		return sqlSession.selectOne("board.answerCount", boardId);
//	}
//	좋아요 갯수
//	public Integer likeCount(long boardId) {
//		return sqlSession.selectOne("board.likeCount", boardId);
//	}
	
//	public List<BoardDTO> allCounts() {
//		return sqlSession.selectList("board.boardList");
//	}
	
	public List<BoardDTO> listPage() {
		return sqlSession.selectList("board.boardList");
	}
	
//	게시글 작성
	public void insertBoard(Map<String, Object> boardMap) {
		sqlSession.insert("board.insertBoard", boardMap);
	}

//	게시글 목록
	public List<BoardDTO> selectAllSearch(Map<String, Object> pageMap){
		List<BoardDTO> result = null;
		try {
			result = sqlSession.selectList("board.selectAllSearch", pageMap);
		} catch (Exception e) {
			System.err.println("selectAllSearch error");
			e.printStackTrace();
		} 
		return result;
	}
	
//	게시글 목록
	public List<BoardDTO> selectAll(){
		List<BoardDTO> result = null;
		try {
			result = sqlSession.selectList("board.selectAll");
		} catch (Exception e) {
			System.err.println("selectAll error");
			e.printStackTrace();
		} 
		return result;
	}
	
//	게시글 목록
	public List<BoardDTO> selectAll(Map<String, Object> pageMap){
		List<BoardDTO> result = null;
		try {
			result = sqlSession.selectList("board.selectAllSearch", pageMap);
			System.out.println(result.toString());
		} catch (Exception e) {
			System.err.println("selectAll error");
			System.out.println(result);
			e.printStackTrace();
		} 
		return result;
	}
	
//	게시글 총 개수
	public Long getTotal(Map<String, Object> pageMap) {
		return sqlSession.selectOne("board.getTotal", pageMap);
	}
	
//	게시글 댓글 수
	public Long getReplyCount(Long boardId) {
		return sqlSession.selectOne("board.getReplyCount", boardId);
	}
//	답변
	public String answerImgPath(String member_img_path) {
		return sqlSession.selectOne("board.answerImgPath", memberId);
	}
	
	public String answerNickName(String answer_nickname) {
		return sqlSession.selectOne("board.answerNickname", memberId);
	}
	
	public String answerContent(String answer_content) {
		return sqlSession.selectOne("board.answerContent", )
	}
	
/*<select id="answerImgPath">
	select member_img_path
	from tbl_member
</select>
<select id="answerNickname">
	select member_nickname
	from tbl_member
</select>
<select id="answerContent">
	select answer_content
	from tbl_saving_answer
</select>*/
}
	
