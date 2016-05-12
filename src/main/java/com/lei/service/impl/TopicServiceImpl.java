package com.lei.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lei.dao.TopicMapper;
import com.lei.model.Reply;
import com.lei.model.Topic;
import com.lei.service.ITopicService;
@Service("topicService")
public class TopicServiceImpl implements ITopicService{
	private TopicMapper topicMapper;

	public TopicMapper getTopicMapper() {
		return topicMapper;
	}
	@Autowired
	public void setTopicMapper(TopicMapper topicMapper) {
		this.topicMapper = topicMapper;
	}
	@Override
	public void saveTopic(Topic topic) {
		
	}
	@Override
	public void deleteTopic(Topic topic) {
		
	}
	@Override
	public List<Topic> findTopicList(Map map) {
		return topicMapper.findTopicList(map);
	}
	@Override
	public Long getTopicCount(Topic s_topic) {
		return topicMapper.getTopicCount(s_topic);
	}
	@Override
	public Topic findTopicById(int topicId) {
		return topicMapper.selectByPrimaryKey(topicId);
	}
	@Override
	public List<Topic> findZdTopicListBySectionId(Map map) {
		return topicMapper.findTopicList(map);
	}
	@Override
	public List<Topic> findPtTopicListBySectionId(Map map) {
		return topicMapper.findTopicList(map);
	}
	@Override
	public Long getNoReplyTopicCount(Topic s_topic) {
		return topicMapper.getNoReplyTopicCount(s_topic);
	}
	@Override
	public List<Topic> findGoodTopicListBySectionId(Map map) {
		return null;
	}
	@Override
	public List<Topic> findNotGoodTopicListBySectionId(Map map) {
		return null;
	}
	@Override
	public Long getPtTopicCountBySectionId(int sectionId) {
		return null;
	}
	@Override
	public List<Reply> getReplyTopicList(Topic s_topic) {
		return topicMapper.getReplyTopicList(s_topic);
	}
	@Override
	public Topic findTopicById(Topic s_topic) {
		Map map=new HashMap();
		map.put("topic", s_topic);
		return topicMapper.findTopicList(map).get(0);
	}
	
	
	

}
