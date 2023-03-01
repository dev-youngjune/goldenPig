package com.goldenPig.board.domain;

public class BoardDTO {

	private Long boardId;
	private Long memberId;
	private String boardTitle;
	private String boardContent;
	private String boardRegisterDate;
	private String boardUpdateDate;
	private int boardStatus;
	private Long likeCount;
	private Long readCount;
	private Long replyCount;

	public BoardDTO() {;}

	public Long getReadCount() {
		return readCount;
	}

	public void setReadCount(Long readCount) {
		this.readCount = readCount;
	}

	public Long getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(Long replyCount) {
		this.replyCount = replyCount;
	}

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

	public int getBoardStatus() {
		return boardStatus;
	}

	public void setBoardStatus(int boardStatus) {
		this.boardStatus = boardStatus;
	}

	public Long getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(Long likeCount) {
		this.likeCount = likeCount;
	}
}
