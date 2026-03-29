package com.lhg.project.model;

import java.util.Date;

public class BbsVo {
	private int bbsIdx;
	private String bbsTitle, userID, bbsContent;
	private Date bbsDate;
	
	public BbsVo() {}

	public BbsVo(int bbsIdx, String bbsTitle, String userID, String bbsContent, Date bbsDate) {
		super();
		this.bbsIdx = bbsIdx;
		this.bbsTitle = bbsTitle;
		this.userID = userID;
		this.bbsContent = bbsContent;
		this.bbsDate = bbsDate;
	}

	public int getBbsIdx() {
		return bbsIdx;
	}

	public void setBbsIdx(int bbsIdx) {
		this.bbsIdx = bbsIdx;
	}

	public String getBbsTitle() {
		return bbsTitle;
	}

	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getBbsContent() {
		return bbsContent;
	}

	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}

	public Date getBbsDate() {
		return bbsDate;
	}

	public void setBbsDate(Date bbsDate) {
		this.bbsDate = bbsDate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((bbsContent == null) ? 0 : bbsContent.hashCode());
		result = prime * result + ((bbsDate == null) ? 0 : bbsDate.hashCode());
		result = prime * result + bbsIdx;
		result = prime * result + ((bbsTitle == null) ? 0 : bbsTitle.hashCode());
		result = prime * result + ((userID == null) ? 0 : userID.hashCode());
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
		BbsVo other = (BbsVo) obj;
		if (bbsContent == null) {
			if (other.bbsContent != null)
				return false;
		} else if (!bbsContent.equals(other.bbsContent))
			return false;
		if (bbsDate == null) {
			if (other.bbsDate != null)
				return false;
		} else if (!bbsDate.equals(other.bbsDate))
			return false;
		if (bbsIdx != other.bbsIdx)
			return false;
		if (bbsTitle == null) {
			if (other.bbsTitle != null)
				return false;
		} else if (!bbsTitle.equals(other.bbsTitle))
			return false;
		if (userID == null) {
			if (other.userID != null)
				return false;
		} else if (!userID.equals(other.userID))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "BbsVo [bbsIdx=" + bbsIdx + ", bbsTitle=" + bbsTitle + ", userID=" + userID + ", bbsContent="
				+ bbsContent + ", bbsDate=" + bbsDate + "]";
	}
	
}
