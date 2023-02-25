package com.goldenPig.tag.domain;

public class TagVO {
	
	private Long tagId;
	private Long boardId;
	private String tagKeyword;
	
	public TagVO() {;}

	public Long getTagId() {
		return tagId;
	}

	public void setTagId(Long tagId) {
		this.tagId = tagId;
	}

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	public String getTagKeyword() {
		return tagKeyword;
	}

	public void setTagKeyword(String tagKeyword) {
		this.tagKeyword = tagKeyword;
	}

	@Override
	public String toString() {
		return "TagVO [tagId=" + tagId + ", boardId=" + boardId + ", tagKeyword=" + tagKeyword + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((tagId == null) ? 0 : tagId.hashCode());
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
		TagVO other = (TagVO) obj;
		if (tagId == null) {
			if (other.tagId != null)
				return false;
		} else if (!tagId.equals(other.tagId))
			return false;
		return true;
	}
	
	
}
