package com.goldenPig.answer.domain;

public class SavingAnswerLikeVO {
	private Long answerLikeId;
	private Long memberId;
	private Long answerId;
	
	public SavingAnswerLikeVO() {;}

	public Long getAnswerLikeId() {
		return answerLikeId;
	}

	public void setAnswerLikeId(Long answerLikeId) {
		this.answerLikeId = answerLikeId;
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
		return "SavingAnswerLikeVO [answerLikeId=" + answerLikeId + ", memberId=" + memberId + ", answerId=" + answerId
				+ "]";
	}
	
	
}
