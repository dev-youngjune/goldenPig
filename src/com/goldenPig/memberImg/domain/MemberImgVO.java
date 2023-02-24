package com.goldenPig.memberImg.domain;

public class MemberImgVO {
	
	private Long memberImgId;
	private Long boardId;
	private String memberImgName;
	private String memberImgPath;
	private String memberImgSystemName;
	
	public MemberImgVO() {;}

	public Long getMemberImgId() {
		return memberImgId;
	}

	public void setMemberImgId(Long memberImgId) {
		this.memberImgId = memberImgId;
	}

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	public String getMemberImgName() {
		return memberImgName;
	}

	public void setMemberImgName(String memberImgName) {
		this.memberImgName = memberImgName;
	}

	public String getMemberImgPath() {
		return memberImgPath;
	}

	public void setMemberImgPath(String memberImgPath) {
		this.memberImgPath = memberImgPath;
	}

	public String getMemberImgSystemName() {
		return memberImgSystemName;
	}

	public void setMemberImgSystemName(String memberImgSystemName) {
		this.memberImgSystemName = memberImgSystemName;
	}

	@Override
	public String toString() {
		return "MemberImgVO [memberImgId=" + memberImgId + ", boardId=" + boardId + ", memberImgName=" + memberImgName
				+ ", memberImgPath=" + memberImgPath + ", memberImgSystemName=" + memberImgSystemName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberImgId == null) ? 0 : memberImgId.hashCode());
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
		MemberImgVO other = (MemberImgVO) obj;
		if (memberImgId == null) {
			if (other.memberImgId != null)
				return false;
		} else if (!memberImgId.equals(other.memberImgId))
			return false;
		return true;
	}
	
}
