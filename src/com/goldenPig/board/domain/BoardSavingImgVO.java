package com.goldenPig.board.domain;

public class BoardSavingImgVO {
	Long boardImgId;
	String boardImgPath;
	String boardImgName;
	Long boardId;
	
	public BoardSavingImgVO() {;}

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

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	@Override
	public String toString() {
		return "BoardSavingImg [boardImgId=" + boardImgId + ", boardImgPath=" + boardImgPath + ", boardImgName="
				+ boardImgName + ", boardId=" + boardId + "]";
	}
	
	
}
