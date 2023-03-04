package com.goldenPig.board.domain;

public class BoardSavingTagVO {
	Long tagId;
	String tagName;
	Long boardId;
	
	public BoardSavingTagVO() {;}

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

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	@Override
	public String toString() {
		return "BoardSavingTag [tagId=" + tagId + ", tagName=" + tagName + ", boardId=" + boardId + "]";
	}
	
	
}
