package com.goldenPig.boardFree.domain;

public class BoardFreeImgVO {
	private Long boardImgId;
	private String boardImgName;
	private String boardImgSystemName;
	private Long boardId;
	
	public BoardFreeImgVO() {;}

	public Long getBoardImgId() {
		return boardImgId;
	}

	public void setBoardImgId(Long boardImgId) {
		this.boardImgId = boardImgId;
	}

	public String getBoardImgName() {
		return boardImgName;
	}

	public void setBoardImgName(String boardImgName) {
		this.boardImgName = boardImgName;
	}

	public String getBoardImgSystemName() {
		return boardImgSystemName;
	}

	public void setBoardImgSystemName(String boardImgSystemName) {
		this.boardImgSystemName = boardImgSystemName;
	}

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	@Override
	public String toString() {
		return "BoardFreeImgVO [boardImgId=" + boardImgId + ", boardImgName=" + boardImgName + ", boardImgSystemName="
				+ boardImgSystemName + ", boardId=" + boardId + "]";
	}
	
}
