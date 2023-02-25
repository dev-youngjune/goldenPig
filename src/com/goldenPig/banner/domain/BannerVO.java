package com.goldenPig.banner.domain;

public class BannerVO {
     
	private Long bannerId;
	private String bannerName;
	private String bannerPath;
	private String bannerSystemName;
	private String bannerStatus;
	
	public BannerVO() {;}

	public Long getBannerId() {
		return bannerId;
	}

	public void setBannerId(Long bannerId) {
		this.bannerId = bannerId;
	}

	public String getBannerName() {
		return bannerName;
	}

	public void setBannerName(String bannerName) {
		this.bannerName = bannerName;
	}

	public String getBannerPath() {
		return bannerPath;
	}

	public void setBannerPath(String bannerPath) {
		this.bannerPath = bannerPath;
	}

	public String getBannerSystemName() {
		return bannerSystemName;
	}

	public void setBannerSystemName(String bannerSystemName) {
		this.bannerSystemName = bannerSystemName;
	}

	public String getBannerStatus() {
		return bannerStatus;
	}

	public void setBannerStatus(String bannerStatus) {
		this.bannerStatus = bannerStatus;
	}

	@Override
	public String toString() {
		return "BannerVO [bannerId=" + bannerId + ", bannerName=" + bannerName + ", bannerPath=" + bannerPath
				+ ", bannerSystemName=" + bannerSystemName + ", bannerStatus=" + bannerStatus + "]";
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
