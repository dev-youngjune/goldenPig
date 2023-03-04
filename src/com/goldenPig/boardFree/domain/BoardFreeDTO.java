package com.goldenPig.boardFree.domain;

public class BoardFreeDTO {
	
	private Long boardId;
	private Long memberId;
	private String boardTitle;
	private String boardContent;
	private String boardRegisterDate;
	private String boardUpdateDate;
	private Long readCount;
	private Long answerCount;
	private Long likeCount;
	private String profileImgPath;
	private String memberName;
	
	public BoardFreeDTO() {;}

	public Long getBoardId() {return boardId;}
	public void setBoardId(Long boardId) {this.boardId = boardId;}
	public Long getMemberId() {return memberId;}
	public void setMemberId(Long memberId) {this.memberId = memberId;}
	public String getBoardTitle() {return boardTitle;}
	public void setBoardTitle(String boardTitle) {this.boardTitle = boardTitle;}
	public String getBoardContent() {return boardContent;}
	public void setBoardContent(String boardContent) {this.boardContent = boardContent;}
	public String getBoardRegisterDate() {return boardRegisterDate;}
	public void setBoardRegisterDate(String boardRegisterDate) {this.boardRegisterDate = boardRegisterDate;}
	public String getBoardUpdateDate() {return boardUpdateDate;}
	public void setBoardUpdateDate(String boardUpdateDate) {this.boardUpdateDate = boardUpdateDate;}
	public Long getBoardReadCount() {return readCount;}
	public void setBoardReadCount(Long boardReadCount) {this.readCount = boardReadCount;}

	public Long getReadCount() {
		return readCount;
	}

	public void setReadCount(Long readCount) {
		this.readCount = readCount;
	}

	public Long getAnswerCount() {
		return answerCount;
	}

	public void setAnswerCount(Long answerCount) {
		this.answerCount = answerCount;
	}

	public Long getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(Long likeCount) {
		this.likeCount = likeCount;
	}

	public String getProfileImgPath() {
		return profileImgPath;
	}

	public void setProfileImgPath(String profileImgPath) {
		this.profileImgPath = profileImgPath;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	
}
