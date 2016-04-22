package com.lei.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lei.dao.ReplyMapper;
import com.lei.model.Reply;
import com.lei.service.IReplyService;

@Service("replyService")
public class ReplyServiceImpl implements IReplyService{
	private ReplyMapper replyMapper;

	public ReplyMapper getReplyMapper() {
		return replyMapper;
	}
	@Autowired
	public void setReplyMapper(ReplyMapper replyMapper) {
		this.replyMapper = replyMapper;
	}
	@Override
	public Reply findLastReplyByTopicId(int topicId) {
		return replyMapper.findLastReplyByTopicId(topicId);
	}
	@Override
	public Long getReplyCountByTopicId(int topicId) {
		return replyMapper.getReplyCountByTopicId(topicId);
	}
	
	//int topicId, PageBean pageBean 
	@Override
	public List<Reply> findReplyListByTopicId(Map map) {
		return replyMapper.findReplyListByTopicId(map);
	}
	@Override
	public void saveReply(Reply reply) {
		replyMapper.selectByPrimaryKey(reply.getId());
	}
	@Override
	public void deleteReply(Reply reply) {
		replyMapper.deleteByPrimaryKey(reply.getId());
	}
	@Override
	public Reply findReplyById(int replyId) {
		return replyMapper.selectByPrimaryKey(replyId);
	}
	

}
