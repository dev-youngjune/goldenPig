package com.goldenPig.admin.domain;

public class AdminBoardDTO {
	Long boardId;
	Long memberId;
	String memberName;
	String boardTitle;
	String boardContent;
	String boardRegisterDate;
	String boardUpdateDate;
	Long boardReadCount;
	
	public AdminBoardDTO() {;}

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

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
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

	@Override
	public String toString() {
		return "AdminBoardDTO [boardId=" + boardId + ", memberId=" + memberId + ", memberName=" + memberName
				+ ", boardTitle=" + boardTitle + ", boardContent=" + boardContent + ", boardRegisterDate="
				+ boardRegisterDate + ", boardUpdateDate=" + boardUpdateDate + ", boardReadCount=" + boardReadCount
				+ "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
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
		AdminBoardDTO other = (AdminBoardDTO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
}
