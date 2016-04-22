package com.lei.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lei.util.BaseUtil;
import com.lei.view.MenuView;



@Controller
@RequestMapping("/common")
public class CommonController extends BaseUtil{
	
	private Logger logger = LoggerFactory.getLogger(CommonController.class);
	
	
	@RequestMapping("/findAllFunctionList")
	public @ResponseBody List<MenuView> findAllFunctionList(){
		
		Map<String,Object> map=new HashMap<String,Object>();
		 //start 由于时间关系做成静态的了
		List<MenuView> listmenu =new ArrayList<MenuView>();
		MenuView menuView1=new MenuView("1",null,"系统管理","icon-sys","");
		MenuView menuView2=new MenuView("2","9","大板块管理","icon-sys","zone");
		MenuView menuView3=new MenuView("3","9","小版块管理","icon-sys","section");
		MenuView menuView4=new MenuView("4","9","帖子管理","icon-sys","topic");
		MenuView menuView5=new MenuView("5","9","用户管理","icon-sys","user");
		MenuView menuView6=new MenuView("6","1","修改密码","icon-edit","");
		MenuView menuView7=new MenuView("7","1","安全退出","icon-end","");
		MenuView menuView8=new MenuView("8","1","刷新系统缓存","icon-role","");
		MenuView menuView9=new MenuView("9",null,"常用操作","icon-sys","");
		listmenu.add(menuView1);
		listmenu.add(menuView2);
		listmenu.add(menuView3);
		listmenu.add(menuView4);
		listmenu.add(menuView5);
		listmenu.add(menuView6);
		listmenu.add(menuView7);
		listmenu.add(menuView8);
		listmenu.add(menuView9);
		//end
		List parentList=new ArrayList<MenuView>();
		for(MenuView object:listmenu){
			
			String id=String.valueOf(object.getId());
			if(object.getPid()==null){
				MenuView menuView=new MenuView();
				menuView.setName(String.valueOf(object.getName()));
				menuView.setIconCls(String.valueOf(object.getIconCls()));
				menuView.setUrl(String.valueOf(object.getUrl()));
				List<MenuView> childList=new ArrayList<MenuView>();
				for(MenuView obj2:listmenu){
					MenuView menuChildView =new MenuView();
					String sid =String.valueOf(obj2.getPid());
					if(sid.equals(id)){
						menuChildView.setName(String.valueOf(obj2.getName()));
						menuChildView.setIconCls(String.valueOf(obj2.getIconCls()));
						menuChildView.setUrl(String.valueOf(obj2.getUrl()));
						childList.add(menuChildView);
					}
				}
				menuView.setChild(childList);
				parentList.add(menuView);
			}
			
		}
		return parentList;
		
	}
	
	
	

}
