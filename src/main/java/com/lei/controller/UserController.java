package com.lei.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.druid.util.StringUtils;
import com.lei.model.User;
import com.lei.service.IUserService;
import com.lei.util.PageUtil;

@Controller
@RequestMapping("/user")
public class UserController {

	private Logger logger = LoggerFactory.getLogger(UserController.class);

	IUserService userService;

	@Autowired
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@ModelAttribute User user, String captcha, String remember) {
		ModelAndView model=null;
		User currentUser=(User) session.getAttribute("currentUser");
		if(currentUser!=null){
			if (currentUser.getType() == 3) {
				model = new ModelAndView("index");
			} else {
				model = new ModelAndView("admin/index");
			}
			return model;
		}
		String error = "";
		logger.debug("User中的值：" + user.getEmail() + "," + user.getPassword());
		logger.debug("验证码：" + captcha);
		logger.debug(remember);
		String sRand = (String) session.getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
		currentUser = userService.login(user);
		if (!captcha.equals(sRand)) {
			error = "验证码错误！";
			session.setAttribute("error", error);
			/*
			 * if (user.getType()==3) { return "adminError"; } else { return
			 * ERROR; }
			 */
		} else if (currentUser == null) {
			error = "用户名或密码错误！";
			session.setAttribute("error", error);
			/*
			 * if (user.getType()==3) { return "adminError"; } else { return
			 * ERROR; }
			 */
		} else {
			if ("1".equals(remember)) {
				// 创建两个Cookie对象
				Cookie nameCookie = new Cookie("email", currentUser.getEmail());
				// 设置Cookie的有效期为3天
				nameCookie.setPath("/");
				nameCookie.setMaxAge(60 * 60 * 24 * 3);
				Cookie pwdCookie = new Cookie("password", currentUser.getPassword());
				pwdCookie.setMaxAge(60 * 60 * 24 * 3);
				pwdCookie.setPath("/");
				response.addCookie(nameCookie);
				response.addCookie(pwdCookie);
			}else{
				Cookie[] cookies = request.getCookies();
				if (cookies != null && cookies.length > 0) { // 如果没有设置过Cookie会返回null
					for (Cookie cookie : cookies) {
						if ("email".equals(cookie.getName())) {
							cookie=new Cookie("email",null);
							cookie.setMaxAge(0);
							cookie.setPath("/"); 
							response.addCookie(cookie);
						} else if ("password".equals(cookie.getName())) {
							cookie=new Cookie("password",null);
							cookie.setMaxAge(0);
							cookie.setPath("/"); 
							response.addCookie(cookie);
						}

					}
				}
			}
			session.setAttribute("currentUser", currentUser);
			session.removeAttribute("error");
		}
		if (currentUser.getType() == 3) {
			model = new ModelAndView("index");
		} else {
			model = new ModelAndView("admin/index");
		}
		return model;
	}
	
	@RequestMapping("user_list")
	public @ResponseBody Map<String,Object> list(String page,String rows,User user){
		Map<String,Object> mapReturn=new HashMap<String, Object>();
		int total=userService.getCountUser(user);
		mapReturn.put("total", total);
		if (StringUtils.isEmpty(page)) {
			page="1";
		}
		if (StringUtils.isEmpty(rows)) {
			rows="10";
		}
		PageUtil pageUtil =new PageUtil(Integer.parseInt(page),Integer.parseInt(rows));
		Map<String,Object>map=new HashMap<String,Object>();
		
		map.put("user",user);
		map.put("pageUtil",pageUtil);
		List<User> userList=userService.findUserList(map);
		mapReturn.put("rows", userList);
		return mapReturn;
	}
	@RequestMapping("login_out")
	public  String login_out(HttpServletRequest request,HttpServletResponse response){
		HttpSession session=request.getSession();
		session.invalidate();
		return "index";
		
	}

}
