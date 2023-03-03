package com.goldenPig.mypage.domain;

public class MoneyVO {
	
	Long memberId;
	int moneyAmount;
	int moneyTarget;
	String moneyRegisterDate;
	String moneyExpiryDate;
	
	public MoneyVO() {;}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
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
		return "MoneyVO [memberId=" + memberId + ", moneyAmount=" + moneyAmount + ", moneyTarget=" + moneyTarget
				+ ", moneyRegisterDate=" + moneyRegisterDate + ", moneyExpiryDate=" + moneyExpiryDate + "]";
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
		MoneyVO other = (MoneyVO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
	
}
