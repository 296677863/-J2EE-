package com.lei.model;

import java.util.Date;


/**
 * <p>Title: Topic.java</p>
 * <p>Description: </p>
 * @author lei
 * @date 2016年3月26日 下午8:17:30 
 * @version 1.0
 */
public class Topic {
	
	private int id;	//帖子id
	
	private int sectionId;//所属板块
	
	private int userId;//发帖人
	
	private String title;//贴子标题
	
	private String content;//帖子内容
	
	private Date publishTime;//发帖时间
	
	private Date modifyTime;//修改时间
	
	private int good=0;//是否精华	0为普通；1为精华
	
	private int top=0;//是否置顶	0为普通；1为置顶

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	

	public int getSectionId() {
		return sectionId;
	}

	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getPublishTime() {
		return publishTime;
	}

	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
	}

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	public int getGood() {
		return good;
	}

	public void setGood(int good) {
		this.good = good;
	}

	public int getTop() {
		return top;
	}

	public void setTop(int top) {
		this.top = top;
	}
	
	
	
}
