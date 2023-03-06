package com.goldenPig.member.domain;

public class MemberVO {
	
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
	
	public MemberVO() {;}

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

	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", memberEmail=" + memberEmail + ", memberPassword=" + memberPassword
				+ ", memberName=" + memberName + ", memberNickName=" + memberNickName + ", memberPhoneNumber="
				+ memberPhoneNumber + ", memberBirth=" + memberBirth + ", memberImgName=" + memberImgName
				+ ", memberImgPath=" + memberImgPath + ", memberGreeting=" + memberGreeting + "]";
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
		MemberVO other = (MemberVO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}

	
	
}
