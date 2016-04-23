package com.lei.dao;

import java.util.List;
import java.util.Map;

import com.lei.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	User login(User user);

	List<User> findUserList(Map<String, Object> map);

	int getCountUser(User user);
}