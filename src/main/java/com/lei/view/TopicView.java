package com.lei.view;

import java.util.ArrayList;
import java.util.List;

import com.lei.model.Reply;
import com.lei.model.Section;
import com.lei.model.Topic;
import com.lei.model.User;

public class TopicView {
	
	private Topic topic;
	private Section section;		
	private User user;	
	private int replyCount;
					
	private List<ReplyView> replyViewList=new ArrayList<ReplyView>();
	private List<Reply> replyList=new ArrayList<Reply>();

	public Topic getTopic() {
		return topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}

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


	public List<ReplyView> getReplyViewList() {
		return replyViewList;
	}

	public void setReplyViewList(List<ReplyView> replyViewList) {
		this.replyViewList = replyViewList;
	}

	public int getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}

	public List<Reply> getReplyList() {
		return replyList;
	}

	public void setReplyList(List<Reply> replyList) {
		this.replyList = replyList;
	}
	
	
	
	

}
