package com.goldenPig.answer.domain;

public class FavoriteVO {
	Long favoriteId;
	Long memberId;
	Long boardId;
	
	public FavoriteVO() {;}

	public Long getFavoriteId() {
		return favoriteId;
	}

	public void setFavoriteId(Long favoriteId) {
		this.favoriteId = favoriteId;
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
		return "Favorite [favoriteId=" + favoriteId + ", memberId=" + memberId + ", boardId=" + boardId + "]";
	}
	
	
}
