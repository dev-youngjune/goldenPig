package com.goldenPig.mypage.domain;

public class ScrapDTO {

	private Long favoriting_member_id;
	private String favoriting_member_nickname;
	private Long saving_member_id;
	private String saving_member_nickname;
	private String boardTitle;
	private String boardContent;
	private String boardRegisterDate;
	private String memberImg;
	
	public ScrapDTO() {;}

	public Long getFavoriting_member_id() {
		return favoriting_member_id;
	}

	public void setFavoriting_member_id(Long favoriting_member_id) {
		this.favoriting_member_id = favoriting_member_id;
	}

	public String getFavoriting_member_nickname() {
		return favoriting_member_nickname;
	}

	public void setFavoriting_member_nickname(String favoriting_member_nickname) {
		this.favoriting_member_nickname = favoriting_member_nickname;
	}

	public Long getSaving_member_id() {
		return saving_member_id;
	}

	public void setSaving_member_id(Long saving_member_id) {
		this.saving_member_id = saving_member_id;
	}

	public String getSaving_member_nickname() {
		return saving_member_nickname;
	}

	public void setSaving_member_nickname(String saving_member_nickname) {
		this.saving_member_nickname = saving_member_nickname;
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

	public String getMemberImg() {
		return memberImg;
	}

	public void setMemberImg(String memberImg) {
		this.memberImg = memberImg;
	}

	@Override
	public String toString() {
		return "ScrapDTO [favoriting_member_id=" + favoriting_member_id + ", favoriting_member_nickname="
				+ favoriting_member_nickname + ", saving_member_id=" + saving_member_id + ", saving_member_nickname="
				+ saving_member_nickname + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", boardRegisterDate=" + boardRegisterDate + ", memberImg=" + memberImg + "]";
	}
	
	
	
}
