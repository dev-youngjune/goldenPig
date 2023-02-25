package com.goldenPig.like.domain;

public class LikeVO {
	
	private Long likeId;
	private Long memberId;
	private Long moardId;
	
	public LikeVO() {;}

	public Long getLikeId() {
		return likeId;
	}

	public void setLikeId(Long likeId) {
		this.likeId = likeId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getMoardId() {
		return moardId;
	}

	public void setMoardId(Long moardId) {
		this.moardId = moardId;
	}

	@Override
	public String toString() {
		return "LikeVO [likeId=" + likeId + ", memberId=" + memberId + ", moardId=" + moardId + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((likeId == null) ? 0 : likeId.hashCode());
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
		LikeVO other = (LikeVO) obj;
		if (likeId == null) {
			if (other.likeId != null)
				return false;
		} else if (!likeId.equals(other.likeId))
			return false;
		return true;
	}

	
}
