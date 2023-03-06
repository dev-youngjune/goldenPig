package com.goldenPig.banner.domain;

public class BannerVO {
<<<<<<< HEAD
     
	private Long bannerId;
	private String bannerSystemName;
	private String bannerOriginalName;
	private String bannerRegisterDate;
	private Long bannerStatus;
	
=======
	Long bannerId;
	String bannerSystemName;
	String bannerOriginalName;
	String bannerRegisterDate;
	int bannerStatus;

>>>>>>> master
	public BannerVO() {;}

	public Long getBannerId() {
		return bannerId;
	}

	public void setBannerId(Long bannerId) {
		this.bannerId = bannerId;
	}

<<<<<<< HEAD
	public String getBannerName() {
		return bannerOriginalName;
	}

	public void setBannerName(String bannerName) {
		this.bannerOriginalName = bannerName;
	}

=======
>>>>>>> master
	public String getBannerSystemName() {
		return bannerSystemName;
	}

	public void setBannerSystemName(String bannerSystemName) {
		this.bannerSystemName = bannerSystemName;
	}

	public String getBannerOriginalName() {
		return bannerOriginalName;
	}

	public void setBannerOriginalName(String bannerOriginalName) {
		this.bannerOriginalName = bannerOriginalName;
	}

	public String getBannerRegisterDate() {
		return bannerRegisterDate;
	}

	public void setBannerRegisterDate(String bannerRegisterDate) {
		this.bannerRegisterDate = bannerRegisterDate;
	}

	public int getBannerStatus() {
		return bannerStatus;
	}

	public void setBannerStatus(int bannerStatus) {
		this.bannerStatus = bannerStatus;
	}
	
	public String getBannerOriginalName() {
		return bannerOriginalName;
	}

	public void setBannerOriginalName(String bannerOriginalName) {
		this.bannerOriginalName = bannerOriginalName;
	}

	public String getBannerRegisterDate() {
		return bannerRegisterDate;
	}

	public void setBannerRegisterDate(String bannerRegisterDate) {
		this.bannerRegisterDate = bannerRegisterDate;
	}

	@Override
	public String toString() {
		return "BannerVO [bannerId=" + bannerId + ", bannerSystemName=" + bannerSystemName + ", bannerOriginalName="
				+ bannerOriginalName + ", bannerRegisterDate=" + bannerRegisterDate + ", bannerStatus=" + bannerStatus
				+ "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((bannerId == null) ? 0 : bannerId.hashCode());
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
		BannerVO other = (BannerVO) obj;
		if (bannerId == null) {
			if (other.bannerId != null)
				return false;
		} else if (!bannerId.equals(other.bannerId))
			return false;
		return true;
	}
}