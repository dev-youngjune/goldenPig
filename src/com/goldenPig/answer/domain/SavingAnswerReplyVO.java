package com.goldenPig.answer.domain;

public class SavingAnswerReplyVO {
//	SELECT reply_id, reply_content, reply_register_date, 
//	reply_update_date, member_id, answer_id
//	FROM goldenpig.tbl_saving_answer_reply;
	private Long replyId;
	private String replyContent;
	private String replyRegisterDate;
	private String replyUpdateDate;
	private Long memberId;
	private Long answerId;
	
	public SavingAnswerReplyVO() {;}

	public Long getReplyId() {
		return replyId;
	}

	public void setReplyId(Long replyId) {
		this.replyId = replyId;
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

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getAnswerId() {
		return answerId;
	}

	public void setAnswerId(Long answerId) {
		this.answerId = answerId;
	}

	@Override
	public String toString() {
		return "SavingAnswerReplyVO [replyId=" + replyId + ", replyContent=" + replyContent + ", replyRegisterDate="
				+ replyRegisterDate + ", replyUpdateDate=" + replyUpdateDate + ", memberId=" + memberId + ", answerId="
				+ answerId + "]";
	}
	
	
}
