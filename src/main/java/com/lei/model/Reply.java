package com.lei.model;

import java.util.Date;


/**
 * <p>Title: Reply.java</p>
 * <p>Description: </p>
 * @author lei
 * @date 2016年3月26日 下午10:27:24 
 * @version 1.0
 */
public class Reply {
	
	private int id;//回复编号
	private int userId;//回复人
	private int topicId;//所属主贴
	private String title;//跟帖主题
	private String content;//跟帖内容
	private  Date publishTime;//跟帖时间
	private Date modifyTime;//修改时间
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getTopicId() {
		return topicId;
	}
	public void setTopicId(int topicId) {
		this.topicId = topicId;
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
	
	

}
