package com.lei.service.impl;

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

}
