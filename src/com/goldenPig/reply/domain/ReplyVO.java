package com.goldenPig.reply.domain;

public class ReplyVO {
	
	private Long replyId;
	private Long memberId;
	private Long boardId;
	private String replyTitle;
	private String replyContent;
	private String replyRegisterDate;
	private String replyUpdateDate;

	public ReplyVO() {;}

	public Long getReplyId() {
		return replyId;
	}

	public void setReplyId(Long replyId) {
		this.replyId = replyId;
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

	public String getReplyTitle() {
		return replyTitle;
	}

	public void setReplyTitle(String replyTitle) {
		this.replyTitle = replyTitle;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public String getReplyRegisterDate() {
		return replyRegisterDate;
	}

	public void setReplyRegisterDate(String replyRegisterDate) {
		this.replyRegisterDate = replyRegisterDate;
	}

	public String getReplyUpdateDate() {
		return replyUpdateDate;
	}

	public void setReplyUpdateDate(String replyUpdateDate) {
		this.replyUpdateDate = replyUpdateDate;
	}

	@Override
	public String toString() {
		return "ReplyVO [replyId=" + replyId + ", memberId=" + memberId + ", boardId=" + boardId + ", replyTitle="
				+ replyTitle + ", replyContent=" + replyContent + ", replyRegisterDate=" + replyRegisterDate
				+ ", replyUpdateDate=" + replyUpdateDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((replyId == null) ? 0 : replyId.hashCode());
		result = prime * result + ((replyTitle == null) ? 0 : replyTitle.hashCode());
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
		ReplyVO other = (ReplyVO) obj;
		if (replyId == null) {
			if (other.replyId != null)
				return false;
		} else if (!replyId.equals(other.replyId))
			return false;
		if (replyTitle == null) {
			if (other.replyTitle != null)
				return false;
		} else if (!replyTitle.equals(other.replyTitle))
			return false;
		return true;
	}
	
	
}
