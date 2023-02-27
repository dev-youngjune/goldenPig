package com.goldenPig.saving.domain;

public class SavingVO {
	private Long memberId;
	private String savingAmount;
	private int savingTargetMoney;
	private String savingTargetMMoney;
	
	public SavingVO() {;}


	public Long getMemberId() {
		return memberId;
	}


	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}


	public String getSavingAmount() {
		return savingAmount;
	}


	public void setSavingAmount(String savingAmount) {
		this.savingAmount = savingAmount;
	}


	public int getSavingTargetMoney() {
		return savingTargetMoney;
	}


	public void setSavingTargetMoney(int savingTargetMoney) {
		this.savingTargetMoney = savingTargetMoney;
	}


	public String getSavingTargetMMoney() {
		return savingTargetMMoney;
	}


	public void setSavingTargetMMoney(String savingTargetMMoney) {
		this.savingTargetMMoney = savingTargetMMoney;
	}


	@Override
	public String toString() {
		return "SavingDAO [memberId=" + memberId + ", savingAmount=" + savingAmount + ", savingTargetMoney="
				+ savingTargetMoney + ", savingTargetMMoney=" + savingTargetMMoney + "]";
	}
}
