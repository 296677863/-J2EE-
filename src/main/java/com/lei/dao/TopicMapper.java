package com.lei.dao;

import java.util.List;
import java.util.Map;

import com.lei.model.Reply;
import com.lei.model.Topic;

public interface TopicMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Topic record);

    int insertSelective(Topic record);

    Topic selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Topic record);

    int updateByPrimaryKeyWithBLOBs(Topic record);

    int updateByPrimaryKey(Topic record);
    
    public List<Topic> findTopicList(Map map);
    
    public Long getTopicCount(Topic s_topic);
    
    public List<Topic> findZdTopicListBySectionId(Map map);
    
    public List<Topic> findPtTopicListBySectionId(Map map);
    
    public Long getNoReplyTopicCount(Topic s_topic);
    
    public List<Topic> findGoodTopicListBySectionId(Map map);
    
    public List<Topic> findNotGoodTopicListBySectionId(Map map);
    
    public Long getPtTopicCountBySectionId(int sectionId);
    
    public List<Reply> getReplyTopicList(Topic topic);
    

    
    
    
}