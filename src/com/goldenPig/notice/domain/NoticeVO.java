package com.goldenPig.notice.domain;

public class NoticeVO {
	Long noticeId;
	String noticeTitle;
	String noticeContent;
	String noticeRegisterDate;
	String noticeUpdateDate;
	
	public NoticeVO() {;}

	public Long getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(Long noticeId) {
		this.noticeId = noticeId;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public String getNoticeRegisterDate() {
		return noticeRegisterDate;
	}

	public void setNoticeRegisterDate(String noticeRegisterDate) {
		this.noticeRegisterDate = noticeRegisterDate;
	}

	public String getNoticeUpdateDate() {
		return noticeUpdateDate;
	}

	public void setNoticeUpdateDate(String noticeUpdateDate) {
		this.noticeUpdateDate = noticeUpdateDate;
	}

	@Override
	public String toString() {
		return "NoticeVO [noticeId=" + noticeId + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent
				+ ", noticeRegisterDate=" + noticeRegisterDate + ", noticeUpdateDate=" + noticeUpdateDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((noticeId == null) ? 0 : noticeId.hashCode());
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
		NoticeVO other = (NoticeVO) obj;
		if (noticeId == null) {
			if (other.noticeId != null)
				return false;
		} else if (!noticeId.equals(other.noticeId))
			return false;
		return true;
	}
}