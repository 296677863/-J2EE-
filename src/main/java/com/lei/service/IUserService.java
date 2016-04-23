package com.lei.service;

import java.util.List;
import java.util.Map;

import com.lei.model.User;
 
/**
 * <p>Title: IUserService.java</p>
 * <p>Description: </p>
 * @author lei
 * @date 2016年3月28日 下午2:27:18 
 * @version 1.0
 */
public interface IUserService {
	public int insert(User user);
	public User login(User user);
	public List<User> findUserList(Map<String, Object> map);
	public int getCountUser(User user);

}
