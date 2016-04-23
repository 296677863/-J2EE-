package com.lei.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class PageController {
	@RequestMapping("index")
	public String toIndex(HttpServletRequest request,HttpServletResponse response){
		return "index";
	}
	
	@RequestMapping("login")
	public String login(HttpServletRequest request){
		String email="";
		String password="";
		Cookie[] cookies=request.getCookies();
		if (cookies != null && cookies.length > 0) { //如果没有设置过Cookie会返回null  
		    for (Cookie cookie : cookies) {
			    if("email".equals(cookie.getName())){
					email=cookie.getValue();
					request.setAttribute("email", email);
				}else if("password".equals(cookie.getName())){
					password=cookie.getValue();
					request.setAttribute("password", password);
				}
		   }  
		} 
		return "login";
	}
	
	@RequestMapping("image")
	public String image(){
		return "image";
	}
	
	@RequestMapping("layout/north")
	public String adminNorth(){
		return "admin/layout/north";
	}
	@RequestMapping("layout/south")
	public String adminSouth(){
		return "admin/layout/south";
	}
	@RequestMapping("layout/center")
	public String adminCenter(){
		return "admin/layout/center";
	}
	@RequestMapping("layout/portal")
	public String adminPortal(){
		return "admin/layout/portal";
	}
	
	@RequestMapping("section")
	public String section(){
		return "admin/section";
	}
	@RequestMapping("topic")
	public String topic(){
		return "admin/topic";
	}
	@RequestMapping("user")
	public String user(){
		return "admin/user";
	}
	@RequestMapping("zone")
	public String zone(){
		return "admin/zone";
	}
	

}
