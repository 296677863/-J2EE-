package com.lei.dao;

import com.lei.model.Zone;

public interface ZoneMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Zone record);

    int insertSelective(Zone record);

    Zone selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Zone record);

    int updateByPrimaryKey(Zone record);
}