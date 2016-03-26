package com.lei.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * <p>Title: User.java</p>
 * <p>Description: </p>
 * @author lei
 * @date 2016年3月26日 下午7:03:17 
 * @version 1.0
 */
public class User {
	
	private int id;          //用户id
	private String nickName; //用户昵称
	private String trueName; //用户昵称
	private String password; //登录密码
	private String sex;  	 //用户性别	0男		1女	
	private String face;	 //头像路径
	private Date regTime;	 //注册时间
	private String email;	 //用户邮箱
	private String mobile;	 //联系电话
	private int type;		 //用户类型	1为其他用户；2管理员
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getTrueName() {
		return trueName;
	}
	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getFace() {
		return face;
	}
	public void setFace(String face) {
		this.face = face;
	}
	public Date getRegTime() {
		return regTime;
	}
	public void setRegTime(Date regTime) {
		this.regTime = regTime;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	

}
