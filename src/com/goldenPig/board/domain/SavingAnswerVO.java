package com.goldenPig.board.domain;

public class SavingAnswerVO {
	private Long answerId;
	private Long boardId;
	private Long memberId;
	private String answerTitle;
	private String answerContent;
	private String answerRegisterDate;
	private String answerUpdateDate;
	
	public SavingAnswerVO() {;}

	public Long getAnswerId() {
		return answerId;
	}

	public void setAnswerId(Long answerId) {
		this.answerId = answerId;
	}

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

	public String getAnswerTitle() {
		return answerTitle;
	}

	public void setAnswerTitle(String answerTitle) {
		this.answerTitle = answerTitle;
	}

	public String getAnswerContent() {
		return answerContent;
	}

	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}

	public String getAnswerRegisterDate() {
		return answerRegisterDate;
	}

	public void setAnswerRegisterDate(String answerRegisterDate) {
		this.answerRegisterDate = answerRegisterDate;
	}

	public String getAnswerUpdateDate() {
		return answerUpdateDate;
	}

	public void setAnswerUpdateDate(String answerUpdateDate) {
		this.answerUpdateDate = answerUpdateDate;
	}

	@Override
	public String toString() {
		return "SavingAnswer [answerId=" + answerId + ", boardId=" + boardId + ", memberId=" + memberId
				+ ", answerTitle=" + answerTitle + ", answerContent=" + answerContent + ", answerRegisterDate="
				+ answerRegisterDate + ", answerUpdateDate=" + answerUpdateDate + "]";
	}
	
	
	
	
}
