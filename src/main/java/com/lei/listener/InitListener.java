package com.lei.listener;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.lei.model.Section;
import com.lei.model.Topic;
import com.lei.model.User;
import com.lei.model.Zone;
import com.lei.service.ISectionService;
import com.lei.service.ITopicService;
import com.lei.service.IUserService;
import com.lei.service.IZoneService;
import com.lei.view.SectionView;

public class InitListener extends ContextLoaderListener implements ApplicationContextAware{
	private ApplicationContext applicationContext;
	private Map<Section, Long> sectionTopicCount=new HashMap<Section, Long>();
	private Map<Section, Long> sectionGoodTopicCount=new HashMap<Section, Long>();
	private Map<Section, Long> sectionNoReplyTopicCount=new HashMap<Section, Long>();
	
	
	
	
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		this.applicationContext=applicationContext;
	}

	@Override
	public void contextInitialized(ServletContextEvent servletContextEvent) {
		ServletContext context =servletContextEvent.getServletContext();
		WebApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContextEvent.getServletContext()); 
		ISectionService sectionService=(ISectionService) ctx.getBean("sectionService");
		ITopicService topicService=(ITopicService) ctx.getBean("topicService");
		IZoneService zoneService=(IZoneService) ctx.getBean("zoneService");
		IUserService userService=(IUserService)ctx.getBean("userService");
		List<Zone> zoneList=zoneService.findAllZoneList();
		context.setAttribute("zoneList", zoneList);
		
		
		for (Zone zone : zoneList) {
			List<SectionView> sectionViewList=new ArrayList<SectionView>();
			int zoneid=zone.getId();
			List<Section> sectionList=sectionService.selectByZoneId(zoneid);
			for (Section section : sectionList) {
				SectionView sectionView=new SectionView();
				sectionView.setSection(section);
				Topic s_topic=new Topic(); 
				s_topic.setSectionid(section.getId());
				Long totalCount=topicService.getTopicCount(s_topic);			//板块的总帖数
				s_topic.setGood(1);
				Long goodCount=topicService.getTopicCount(s_topic);			//板块的精华帖数
				s_topic.setGood(0);
				Long noReplyCount=topicService.getNoReplyTopicCount(s_topic);	
				//板块的无回复帖数
				sectionView.setTotalCount(String.valueOf(totalCount));
				sectionView.setNoReplyCount(String.valueOf(noReplyCount));
				sectionView.setGoodCount(String.valueOf(goodCount));
				
				User user=new User();
				user.setId(section.getMasterid());
				Map map=(Map) new HashMap();
				map.put("user",user);
				user=(User)userService.findUserList(map).get(0);
				sectionView.setUser(user);
				sectionViewList.add(sectionView);
				
			}
			context.setAttribute("sectionViewList"+zoneid, sectionViewList);
		}
		context.setAttribute("sectionTopicCount", sectionTopicCount);
		context.setAttribute("sectionGoodTopicCount", sectionGoodTopicCount);
		context.setAttribute("sectionNoReplyTopicCount", sectionNoReplyTopicCount);
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
	}

}
