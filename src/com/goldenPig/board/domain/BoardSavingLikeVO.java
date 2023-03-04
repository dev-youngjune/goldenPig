package com.goldenPig.board.domain;

public class BoardSavingLikeVO {
	private Long boardLikeId;
	private Long memberId;
	private Long boardId;
	
	public BoardSavingLikeVO() {;}

	public Long getBoardLikeId() {
		return boardLikeId;
	}

	public void setBoardLikeId(Long boardLikeId) {
		this.boardLikeId = boardLikeId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	@Override
	public String toString() {
		return "BoardSavingLike [boardLikeId=" + boardLikeId + ", memberId=" + memberId + ", boardId=" + boardId + "]";
	}
	
	
}
