package com.lei.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lei.dao.UserMapper;
import com.lei.model.User;
import com.lei.service.IUserService;

/**
 * <p>Title: UserServiceImpl.java</p>
 * <p>Description: </p>
 * @author lei
 * @date 2016年3月28日 下午2:27:11 
 * @version 1.0
 */

@Service("userService")
public class UserServiceImpl implements IUserService {
	private UserMapper userMapper;
	
	

	public UserMapper getUserMapper() {
		return userMapper;
	}


	@Autowired
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}



	@Override
	public int insert(User user) {
		return userMapper.insert(user);
	}


	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return userMapper.login(user);
	}


	@Override
	public List<User> findUserList(Map<String, Object> map) {
		return userMapper.findUserList(map);
	}


	@Override
	public int getCountUser(User user) {
		return userMapper.getCountUser(user);
	}


	@Override
	public User selectByPrimaryKey(int id) {
		return userMapper.selectByPrimaryKey(id);
	}

}
