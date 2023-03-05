package com.goldenPig.boardFree.domain;

public class BoardFreeDTO {
	
	private Long boardId;
	private Long memberId;
	private String boardTitle;
	private String boardContent;
	private String boardRegisterDate;
	private String boardUpdateDate;
	private Long boardReadCount;
	private Long boardReplyCount;
	private Long boardLikeCount;
	private String boardImgPath;
	private String memberNickname;
	
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
	public Long getBoardReadCount() {return boardReadCount;}
	public void setBoardReadCount(Long boardReadCount) {this.boardReadCount = boardReadCount;}

	public Long getReadCount() {
		return boardReadCount;
	}

	public void setReadCount(Long readCount) {
		this.boardReadCount = readCount;
	}

	public Long getAnswerCount() {
		return boardReplyCount;
	}

	public void setAnswerCount(Long answerCount) {
		this.boardReplyCount = answerCount;
	}

	public Long getLikeCount() {
		return boardLikeCount;
	}

	public void setLikeCount(Long likeCount) {
		this.boardLikeCount = likeCount;
	}

	public String getProfileImgPath() {
		return boardImgPath;
	}

	public void setProfileImgPath(String profileImgPath) {
		this.boardImgPath = profileImgPath;
	}

	public String getMemberName() {
		return memberNickname;
	}

	public void setMemberName(String memberName) {
		this.memberNickname = memberName;
	}
	
	
}
