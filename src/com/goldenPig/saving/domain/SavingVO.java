package com.goldenPig.saving.domain;

public class SavingVO {
	
	Long memberId;
	Long savingAmount;
	Long savingTargetMoney;
	String savingRegisterDate;
	String svaingExpiryDate;
	
	public SavingVO() {;}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getSavingAmount() {
		return savingAmount;
	}

	public void setSavingAmount(Long savingAmount) {
		this.savingAmount = savingAmount;
	}

	public Long getSavingTargetMoney() {
		return savingTargetMoney;
	}

	public void setSavingTargetMoney(Long savingTargetMoney) {
		this.savingTargetMoney = savingTargetMoney;
	}

	public String getSavingRegisterDate() {
		return savingRegisterDate;
	}

	public void setSavingRegisterDate(String savingRegisterDate) {
		this.savingRegisterDate = savingRegisterDate;
	}

	public String getSvaingExpiryDate() {
		return svaingExpiryDate;
	}

	public void setSvaingExpiryDate(String svaingExpiryDate) {
		this.svaingExpiryDate = svaingExpiryDate;
	}

	@Override
	public String toString() {
		return "SavingVO [memberId=" + memberId + ", savingAmount=" + savingAmount + ", savingTargetMoney="
				+ savingTargetMoney + ", savingRegisterDate=" + savingRegisterDate + ", svaingExpiryDate="
				+ svaingExpiryDate + "]";
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
		SavingVO other = (SavingVO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
	
	
}
