package com.goldenPig.boardFree.domain;

public class BoardFreeLikeVO {
	private Long likeId;
	private Long memberId;
	private Long boardId;
	
	public BoardFreeLikeVO() {;}

	public Long getLikeId() {
		return likeId;
	}

	public void setLikeId(Long likeId) {
		this.likeId = likeId;
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
		return "BoardFreeLikeVO [likeId=" + likeId + ", memberId=" + memberId + ", boardId=" + boardId + "]";
	}
	
}
