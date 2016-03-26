package com.lei.model;

/**
 * <p>Title: Section.java</p>
 * <p>Description: </p>
 * @author lei
 * @date 2016年3月26日 下午10:22:27 
 * @version 1.0
 */
public class Section {
	
	private int id;//板块id
	private String name;//板块名称
	private int masterId;//版主id
	private String logo;//板块logo图片路径
	private String zoneId;//所属大板块
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMasterId() {
		return masterId;
	}
	public void setMasterId(int masterId) {
		this.masterId = masterId;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getZoneId() {
		return zoneId;
	}
	public void setZoneId(String zoneId) {
		this.zoneId = zoneId;
	}
	
	

}
