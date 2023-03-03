package com.goldenPig.mypage.domain;

public class MoneyDTO {

	Long memberId;
	String memberNickname;
	String memberImgName;
	String memberImgPath;
	String memberGreeting;
	int moneyAmount;
	int moneyTarget;
	String moneyRegisterDate;
	String moneyExpiryDate;
	
	public MoneyDTO() {;}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
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

	public int getMoneyAmount() {
		return moneyAmount;
	}

	public void setMoneyAmount(int moneyAmount) {
		this.moneyAmount = moneyAmount;
	}

	public int getMoneyTarget() {
		return moneyTarget;
	}

	public void setMoneyTarget(int moneyTarget) {
		this.moneyTarget = moneyTarget;
	}

	public String getMoneyRegisterDate() {
		return moneyRegisterDate;
	}

	public void setMoneyRegisterDate(String moneyRegisterDate) {
		this.moneyRegisterDate = moneyRegisterDate;
	}

	public String getMoneyExpiryDate() {
		return moneyExpiryDate;
	}

	public void setMoneyExpiryDate(String moneyExpiryDate) {
		this.moneyExpiryDate = moneyExpiryDate;
	}

	@Override
	public String toString() {
		return "MoneyDTO [memberId=" + memberId + ", memberNickname=" + memberNickname + ", memberImgName="
				+ memberImgName + ", memberImgPath=" + memberImgPath + ", memberGreeting=" + memberGreeting
				+ ", moneyAmount=" + moneyAmount + ", moneyTarget=" + moneyTarget + ", moneyRegisterDate="
				+ moneyRegisterDate + ", moneyExpiryDate=" + moneyExpiryDate + "]";
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
		MoneyDTO other = (MoneyDTO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
	
	
}
