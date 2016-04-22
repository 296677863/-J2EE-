package com.lei.service;

import java.util.List;
import java.util.Map;

import com.lei.model.Reply;

public interface IReplyService {
	
	public Reply findLastReplyByTopicId(int topicId);
	
	public Long getReplyCountByTopicId(int topicId) ;
	
	public List<Reply> findReplyListByTopicId(Map map);
	
	public void saveReply(Reply reply);
	
	public void deleteReply(Reply reply) ;
	
	public Reply findReplyById(int replyId) ;
}
