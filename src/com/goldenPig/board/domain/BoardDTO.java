package com.goldenPig.board.domain;

public class BoardDTO {

	private Long boardId;
	private Long memberId;
	private String boardTitle;
	private String boardContent;
	private String boardRegisterDate;
	private String boardUpdateDate;
	private Long boardReadCount;
	private Long likeCount;
	private Long replyCount;
	
	
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


	public Long getReplyCount() {
		return replyCount;
	}


	public void setReplyCount(Long replyCount) {
		this.replyCount = replyCount;
	}


	@Override
	public String toString() {
		return "BoardDTO [boardId=" + boardId + ", memberId=" + memberId + ", boardTitle=" + boardTitle
				+ ", boardContent=" + boardContent + ", boardRegisterDate=" + boardRegisterDate + ", boardUpdateDate="
				+ boardUpdateDate + ", boardReadCount=" + boardReadCount + ", boardStatus=" + boardStatus
				+ ", likeCount=" + likeCount + ", replyCount=" + replyCount + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((boardId == null) ? 0 : boardId.hashCode());
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BoardDTO other = (BoardDTO) obj;
		if (boardId == null) {
			if (other.boardId != null)
				return false;
		} else if (!boardId.equals(other.boardId))
			return false;
		return true;
	}


	
}
