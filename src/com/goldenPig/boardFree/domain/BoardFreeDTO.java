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
	private String boardImgSystemName;
	private String memberNickname;
	private Long boardImgId;
	private String boardImgName;
	
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
		return boardImgSystemName;
	}

	public void setProfileImgPath(String profileImgPath) {
		this.boardImgSystemName = profileImgPath;
	}

	public String getMemberName() {
		return memberNickname;
	}

	public void setMemberName(String memberName) {
		this.memberNickname = memberName;
	}

	public Long getBoardReplyCount() {
		return boardReplyCount;
	}

	public void setBoardReplyCount(Long boardReplyCount) {
		this.boardReplyCount = boardReplyCount;
	}

	public Long getBoardLikeCount() {
		return boardLikeCount;
	}

	public void setBoardLikeCount(Long boardLikeCount) {
		this.boardLikeCount = boardLikeCount;
	}

	public String getBoardImgSystemName() {
		return boardImgSystemName;
	}

	public void setBoardImgSystemName(String boardImgSystemName) {
		this.boardImgSystemName = boardImgSystemName;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public Long getBoardImgId() {
		return boardImgId;
	}

	public void setBoardImgId(Long boardImgId) {
		this.boardImgId = boardImgId;
	}

	public String getBoardImgName() {
		return boardImgName;
	}

	public void setBoardImgName(String boardImgName) {
		this.boardImgName = boardImgName;
	}
	
	
	
	
}
