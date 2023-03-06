package com.goldenPig.mypage.domain;

public class MypageDTO {

	private Long memberId;
	private String memberEmail;
	private String memberPassword;
	private String memberName;
	private String memberNickName;
	private String memberPhoneNumber;
	private String memberBirth;
	private String memberImgName;
	private String memberImgPath;
	private String memberGreeting;
	
	private Long boardId;
	private String boardTitle;
	private String boardContent;
	private String boardRegisterDate;
	private String boardUpdateDate;
	private String boardReadCount;
	private Long savingWriteCount;
	
	
	private Long boardLikeId;
	private Long savingLikeCount;
	
	private Long favoriteId;
	private Long favoriteTotal;
	
	private Long answerId;
	private String answerTitle;
	private String answerContent;
	private String answerRegisterDate;
	private String answerUpdateDate;
	private Long answerWriteCount;
	
	private Long answerLikeId;
	private Long answerLikeCount;
	
	public MypageDTO() {;}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberNickName() {
		return memberNickName;
	}

	public void setMemberNickName(String memberNickName) {
		this.memberNickName = memberNickName;
	}

	public String getMemberPhoneNumber() {
		return memberPhoneNumber;
	}

	public void setMemberPhoneNumber(String memberPhoneNumber) {
		this.memberPhoneNumber = memberPhoneNumber;
	}

	public String getMemberBirth() {
		return memberBirth;
	}

	public void setMemberBirth(String memberBirth) {
		this.memberBirth = memberBirth;
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

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
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

	public String getBoardReadCount() {
		return boardReadCount;
	}

	public void setBoardReadCount(String boardReadCount) {
		this.boardReadCount = boardReadCount;
	}

	public Long getSavingWriteCount() {
		return savingWriteCount;
	}

	public void setSavingWriteCount(Long savingWriteCount) {
		this.savingWriteCount = savingWriteCount;
	}

	public Long getBoardLikeId() {
		return boardLikeId;
	}

	public void setBoardLikeId(Long boardLikeId) {
		this.boardLikeId = boardLikeId;
	}

	public Long getSavingLikeCount() {
		return savingLikeCount;
	}

	public void setSavingLikeCount(Long savingLikeCount) {
		this.savingLikeCount = savingLikeCount;
	}

	public Long getFavoriteId() {
		return favoriteId;
	}

	public void setFavoriteId(Long favoriteId) {
		this.favoriteId = favoriteId;
	}

	public Long getFavoriteTotal() {
		return favoriteTotal;
	}

	public void setFavoriteTotal(Long favoriteTotal) {
		this.favoriteTotal = favoriteTotal;
	}

	public Long getAnswerId() {
		return answerId;
	}

	public void setAnswerId(Long answerId) {
		this.answerId = answerId;
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

	public Long getAnswerWriteCount() {
		return answerWriteCount;
	}

	public void setAnswerWriteCount(Long answerWriteCount) {
		this.answerWriteCount = answerWriteCount;
	}

	public Long getAnswerLikeId() {
		return answerLikeId;
	}

	public void setAnswerLikeId(Long answerLikeId) {
		this.answerLikeId = answerLikeId;
	}

	public Long getAnswerLikeCount() {
		return answerLikeCount;
	}

	public void setAnswerLikeCount(Long answerLikeCount) {
		this.answerLikeCount = answerLikeCount;
	}

	@Override
	public String toString() {
		return "MypageDTO [memberId=" + memberId + ", memberEmail=" + memberEmail + ", memberPassword=" + memberPassword
				+ ", memberName=" + memberName + ", memberNickName=" + memberNickName + ", memberPhoneNumber="
				+ memberPhoneNumber + ", memberBirth=" + memberBirth + ", memberImgName=" + memberImgName
				+ ", memberImgPath=" + memberImgPath + ", memberGreeting=" + memberGreeting + ", boardId=" + boardId
				+ ", boardTitle=" + boardTitle + ", boardContent=" + boardContent + ", boardRegisterDate="
				+ boardRegisterDate + ", boardUpdateDate=" + boardUpdateDate + ", boardReadCount=" + boardReadCount
				+ ", savingWriteCount=" + savingWriteCount + ", boardLikeId=" + boardLikeId + ", savingLikeCount="
				+ savingLikeCount + ", favoriteId=" + favoriteId + ", favoriteTotal=" + favoriteTotal + ", answerId="
				+ answerId + ", answerTitle=" + answerTitle + ", answerContent=" + answerContent
				+ ", answerRegisterDate=" + answerRegisterDate + ", answerUpdateDate=" + answerUpdateDate
				+ ", answerWriteCount=" + answerWriteCount + ", answerLikeId=" + answerLikeId + ", answerLikeCount="
				+ answerLikeCount + "]";
	}

	
	
	
	
}
