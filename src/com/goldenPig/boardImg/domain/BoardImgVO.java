package com.goldenPig.boardImg.domain;

public class BoardImgVO {
	
	private Long boardImgId;
	private Long boardId;
	private String BoardImgPaht;
	private String BoardImgName;
	private String boardImgSystemName;
	
	public BoardImgVO() {;}

	public Long getBoardImgId() {
		return boardImgId;
	}

	public void setBoardImgId(Long boardImgId) {
		this.boardImgId = boardImgId;
	}

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	public String getBoardImgPaht() {
		return BoardImgPaht;
	}

	public void setBoardImgPaht(String boardImgPaht) {
		BoardImgPaht = boardImgPaht;
	}

	public String getBoardImgName() {
		return BoardImgName;
	}

	public void setBoardImgName(String boardImgName) {
		BoardImgName = boardImgName;
	}

	public String getBoardImgSystemName() {
		return boardImgSystemName;
	}

	public void setBoardImgSystemName(String boardImgSystemName) {
		this.boardImgSystemName = boardImgSystemName;
	}

	@Override
	public String toString() {
		return "BoardImgVO [boardImgId=" + boardImgId + ", boardId=" + boardId + ", BoardImgPaht=" + BoardImgPaht
				+ ", BoardImgName=" + BoardImgName + ", boardImgSystemName=" + boardImgSystemName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((boardImgId == null) ? 0 : boardImgId.hashCode());
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
		BoardImgVO other = (BoardImgVO) obj;
		if (boardImgId == null) {
			if (other.boardImgId != null)
				return false;
		} else if (!boardImgId.equals(other.boardImgId))
			return false;
		return true;
	}

	
}
