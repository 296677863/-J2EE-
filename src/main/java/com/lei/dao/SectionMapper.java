package com.lei.dao;

import java.util.List;
import java.util.Map;

import com.lei.model.Section;

public interface SectionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Section record);

    int insertSelective(Section record);

    Section selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Section record);

    int updateByPrimaryKey(Section record);
    
    public List<Section> findSectionList(Map map) ;
    
    public Long getSectionCount(Section s_section);
    
    
    
    
    
}