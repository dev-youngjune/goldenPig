package com.goldenPig.mypage.domain;

public class MypageDTO {

	private Long memberId;
	private String memberNickName;
	private String memberImgName;
	private String memberImgPath;
	private String memberGreeting;
	private int savingWriteCount;
	private int answerWriteCount;
	private int boardLikeCountTotal;
	private int answerLikeCountTotal;
	private int favoriteTotal;
	
	public MypageDTO() {;}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getMemberNickName() {
		return memberNickName;
	}

	public void setMemberNickName(String memberNickName) {
		this.memberNickName = memberNickName;
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

	public String getMemberGreeting() {
		return memberGreeting;
	}

	public void setMemberGreeting(String memberGreeting) {
		this.memberGreeting = memberGreeting;
	}

	public int getSavingWriteCount() {
		return savingWriteCount;
	}

	public void setSavingWriteCount(int savingWriteCount) {
		this.savingWriteCount = savingWriteCount;
	}

	public int getAnswerWriteCount() {
		return answerWriteCount;
	}

	public void setAnswerWriteCount(int answerWriteCount) {
		this.answerWriteCount = answerWriteCount;
	}

	public int getBoardLikeCountTotal() {
		return boardLikeCountTotal;
	}

	public void setBoardLikeCountTotal(int boardLikeCountTotal) {
		this.boardLikeCountTotal = boardLikeCountTotal;
	}

	public int getAnswerLikeCountTotal() {
		return answerLikeCountTotal;
	}

	public void setAnswerLikeCountTotal(int answerLikeCountTotal) {
		this.answerLikeCountTotal = answerLikeCountTotal;
	}

	public int getFavoriteTotal() {
		return favoriteTotal;
	}

	public void setFavoriteTotal(int favoriteTotal) {
		this.favoriteTotal = favoriteTotal;
	}

	@Override
	public String toString() {
		return "MypageDTO [memberId=" + memberId + ", memberNickName=" + memberNickName + ", memberImgName="
				+ memberImgName + ", memberImgPath=" + memberImgPath + ", memberGreeting=" + memberGreeting
				+ ", savingWriteCount=" + savingWriteCount + ", answerWriteCount=" + answerWriteCount
				+ ", boardLikeCountTotal=" + boardLikeCountTotal + ", answerLikeCountTotal=" + answerLikeCountTotal
				+ ", favoriteTotal=" + favoriteTotal + "]";
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
		MypageDTO other = (MypageDTO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}

	
	
	
	
}
