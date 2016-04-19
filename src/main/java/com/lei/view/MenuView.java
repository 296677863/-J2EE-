package com.lei.view;

import java.util.ArrayList;
import java.util.List;



public class MenuView {
	private String id;
	private String pid;
	private String name;
	private String iconCls;
	private String url;
	private List<MenuView> child=new ArrayList<MenuView>();
	
	
	public MenuView() {
		super();
	}
	public MenuView(String id, String pid, String name, String iconCls, String url) {
		super();
		this.id = id;
		this.pid = pid;
		this.name = name;
		this.iconCls = iconCls;
		this.url = url;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIconCls() {
		return iconCls;
	}
	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public List<MenuView> getChild() {
		return child;
	}
	public void setChild(List<MenuView> child) {
		this.child = child;
	}
	
	

}
