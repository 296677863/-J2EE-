package com.lei.view;

import com.lei.model.Section;
import com.lei.model.User;

public class SectionView {
	private Section section;
	
	private User user;
	
	private String totalCount;
	private String goodCount;
	private String noReplyCount;

	public Section getSection() {
		return section;
	}

	public void setSection(Section section) {
		this.section = section;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(String totalCount) {
		this.totalCount = totalCount;
	}

	public String getGoodCount() {
		return goodCount;
	}

	public void setGoodCount(String goodCount) {
		this.goodCount = goodCount;
	}

	public String getNoReplyCount() {
		return noReplyCount;
	}

	public void setNoReplyCount(String noReplyCount) {
		this.noReplyCount = noReplyCount;
	}
	
	

}
