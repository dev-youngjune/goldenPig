package com.goldenPig.board.domain;

public class BoardDTO {
	private Long boardId;
	private Long memberId;
	private String boardTitle;
	private String boardContent;
	private String boardRegisterDate;
	private String boardUpdateDate;
	private Long boardReadCount;
	private Long boardImgId;
	private String boardImgPath;
	private String boardImgName;
	private Long boardLikeId;
	private Long replyId;
	private String replyContent;
	private String replyRegisterDate;
	private String replyUpdateDate;
	private Long tagId;
	private String tagName;
	private Long favoriteId;
	private Long answerId;
	private String answerTitle;
	private String answerContent;
	private String answerRegisterDate;
	private String answerUpdateDate;
	private Long answerLikeId;
	private Long favoriteCount;
	private Long boardReplyCount;
	private Long boardLikeCount;
	private Long answerCount;
	private String boardImgSystemName;
	private String memberNickname;
	private String memberImgPath;
	private String memberNickName;

	public BoardDTO() {;}

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardRegisterDate() {
		return boardRegisterDate;
	}

	public void setBoardRegisterDate(String boardRegisterDate) {
		this.boardRegisterDate = boardRegisterDate;
	}

	public String getBoardUpdateDate() {
		return boardUpdateDate;
	}

	public void setBoardUpdateDate(String boardUpdateDate) {
		this.boardUpdateDate = boardUpdateDate;
	}

	public Long getBoardReadCount() {
		return boardReadCount;
	}

	public void setBoardReadCount(Long boardReadCount) {
		this.boardReadCount = boardReadCount;
	}

	public Long getBoardImgId() {
		return boardImgId;
	}

	public void setBoardImgId(Long boardImgId) {
		this.boardImgId = boardImgId;
	}

	public String getBoardImgPath() {
		return boardImgPath;
	}

	public void setBoardImgPath(String boardImgPath) {
		this.boardImgPath = boardImgPath;
	}

	public String getBoardImgName() {
		return boardImgName;
	}

	public void setBoardImgName(String boardImgName) {
		this.boardImgName = boardImgName;
	}

	public Long getBoardLikeId() {
		return boardLikeId;
	}

	public void setBoardLikeId(Long boardLikeId) {
		this.boardLikeId = boardLikeId;
	}

	public Long getReplyId() {
		return replyId;
	}

	public void setReplyId(Long replyId) {
		this.replyId = replyId;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public String getReplyRegisterDate() {
		return replyRegisterDate;
	}

	public void setReplyRegisterDate(String replyRegisterDate) {
		this.replyRegisterDate = replyRegisterDate;
	}

	public String getReplyUpdateDate() {
		return replyUpdateDate;
	}

	public void setReplyUpdateDate(String replyUpdateDate) {
		this.replyUpdateDate = replyUpdateDate;
	}

	public Long getTagId() {
		return tagId;
	}

	public void setTagId(Long tagId) {
		this.tagId = tagId;
	}

	public String getTagName() {
		return tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}

	public Long getFavoriteId() {
		return favoriteId;
	}

	public void setFavoriteId(Long favoriteId) {
		this.favoriteId = favoriteId;
	}

	public Long getAnswerId() {
		return answerId;
	}

	public void setAnswerId(Long answerId) {
		this.answerId = answerId;
	}

	public String getAnswerTitle() {
		return answerTitle;
	}

	public void setAnswerTitle(String answerTitle) {
		this.answerTitle = answerTitle;
	}

	public String getAnswerContent() {
		return answerContent;
	}

	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}

	public String getAnswerRegisterDate() {
		return answerRegisterDate;
	}

	public void setAnswerRegisterDate(String answerRegisterDate) {
		this.answerRegisterDate = answerRegisterDate;
	}

	public String getAnswerUpdateDate() {
		return answerUpdateDate;
	}

	public void setAnswerUpdateDate(String answerUpdateDate) {
		this.answerUpdateDate = answerUpdateDate;
	}

	public Long getAnswerLikeId() {
		return answerLikeId;
	}

	public void setAnswerLikeId(Long answerLikeId) {
		this.answerLikeId = answerLikeId;
	}

	public Long getFavoriteCount() {
		return favoriteCount;
	}

	public void setFavoriteCount(Long favoriteCount) {
		this.favoriteCount = favoriteCount;
	}

	public Long getBoardReplyCount() {
		return boardReplyCount;
	}

	public void setBoardReplyCount(Long boardReplyCount) {
		this.boardReplyCount = boardReplyCount;
	}

	public Long getBoardLikeCount() {
		return boardLikeCount;
	}

	public void setBoardLikeCount(Long boardLikeCount) {
		this.boardLikeCount = boardLikeCount;
	}

	public Long getAnswerCount() {
		return answerCount;
	}

	public void setAnswerCount(Long answerCount) {
		this.answerCount = answerCount;
	}

	public String getBoardImgSystemName() {
		return boardImgSystemName;
	}

	public void setBoardImgSystemName(String boardImgSystemName) {
		this.boardImgSystemName = boardImgSystemName;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getMemberImgPath() {
		return memberImgPath;
	}

	public void setMemberImgPath(String memberImgPath) {
		this.memberImgPath = memberImgPath;
	}

	public String getMemberNickName() {
		return memberNickName;
	}

	public void setMemberNickName(String memberNickName) {
		this.memberNickName = memberNickName;
	}

	@Override
	public String toString() {
		return "BoardDTO [boardId=" + boardId + ", memberId=" + memberId + ", boardTitle=" + boardTitle
				+ ", boardContent=" + boardContent + ", boardRegisterDate=" + boardRegisterDate + ", boardUpdateDate="
				+ boardUpdateDate + ", boardReadCount=" + boardReadCount + ", boardImgId=" + boardImgId
				+ ", boardImgPath=" + boardImgPath + ", boardImgName=" + boardImgName + ", boardLikeId=" + boardLikeId
				+ ", replyId=" + replyId + ", replyContent=" + replyContent + ", replyRegisterDate=" + replyRegisterDate
				+ ", replyUpdateDate=" + replyUpdateDate + ", tagId=" + tagId + ", tagName=" + tagName + ", favoriteId="
				+ favoriteId + ", answerId=" + answerId + ", answerTitle=" + answerTitle + ", answerContent="
				+ answerContent + ", answerRegisterDate=" + answerRegisterDate + ", answerUpdateDate="
				+ answerUpdateDate + ", answerLikeId=" + answerLikeId + ", favoriteCount=" + favoriteCount
				+ ", boardReplyCount=" + boardReplyCount + ", boardLikeCount=" + boardLikeCount + ", answerCount="
				+ answerCount + ", boardImgSystemName=" + boardImgSystemName + ", memberNickname=" + memberNickname
				+ ", memberImgPath=" + memberImgPath + ", memberNickName=" + memberNickName + "]";
	}




}

	
	

