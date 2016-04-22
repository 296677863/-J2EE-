package com.lei.dao;

import java.util.List;
import java.util.Map;

import com.lei.model.Reply;

public interface ReplyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Reply record);

    int insertSelective(Reply record);

    Reply selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Reply record);

    int updateByPrimaryKeyWithBLOBs(Reply record);

    int updateByPrimaryKey(Reply record);
    
    
    public Reply findLastReplyByTopicId(int topicId);
	
	public Long getReplyCountByTopicId(int topicId) ;
	
	public List<Reply> findReplyListByTopicId(Map map);
	

}