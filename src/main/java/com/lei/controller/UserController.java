package com.lei.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lei.model.User;
import com.lei.service.IUserService;


@Controller
@RequestMapping("/user")
public class UserController {
	
	private Logger logger=LoggerFactory.getLogger(UserController.class);
	
	IUserService userService;
	
	@Autowired
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}


	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(HttpServletRequest request,HttpServletResponse response,
			@ModelAttribute User user,String imageCode){
		String error="";
		HttpSession session=request.getSession();
		logger.debug("User中的值："+user.getNickname()+","+user.getPassword());
		logger.debug("验证码："+imageCode);
		
		User currentUser=userService.login(user);
		if(!imageCode.equals(session.getAttribute("sRand"))){
			error="验证码错误！";
			session.setAttribute("error", error);
			/*if (user.getType()==3) {
				return "adminError";
			} else {
				return ERROR;
			}*/
		}else if(currentUser==null){
			error="用户名或密码错误！";
			session.setAttribute("error", error);
			/*if (user.getType()==3) {
				return "adminError";
			} else {
				return ERROR;
			}*/
		}else{
			session.setAttribute("currentUser", currentUser);
			session.removeAttribute("error");
		}
		if (user.getType()==3) {
			return "adminLogin";
		} else {
			return "login";
		}
	}
	

}
