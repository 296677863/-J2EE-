package com.lei.service;

import java.util.List;
import java.util.Map;

import com.lei.model.Topic;

public interface ITopicService {
	
	public void saveTopic(Topic topic);
	
	
	public void deleteTopic(Topic topic);
	
	public List<Topic> findTopicList(Map map);
	
	public Long getTopicCount(Topic s_topic);
	
	public Topic findTopicById(int topicId);
	
	public List<Topic> findZdTopicListBySectionId(Map map);
	
	public List<Topic> findPtTopicListBySectionId(Map map);
	
	public Long getNoReplyTopicCount(Topic s_topic);
	
	public List<Topic> findGoodTopicListBySectionId(Map map);
	
	public List<Topic> findNotGoodTopicListBySectionId(Map map);
	
	public Long getPtTopicCountBySectionId(int sectionId) ;
	

}
