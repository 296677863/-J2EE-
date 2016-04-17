package com.lei.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class PageController {
	@RequestMapping("index")
	public String toIndex(){
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

}
