package com.lei.listener;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.lei.model.Section;
import com.lei.model.Topic;
import com.lei.model.Zone;
import com.lei.service.ISectionService;
import com.lei.service.ITopicService;
import com.lei.service.IZoneService;

public class InitListener implements ServletContextListener,ApplicationContextAware{
	private ApplicationContext applicationContext;
	private Map<Section, Long> sectionTopicCount=new HashMap<Section, Long>();
	private Map<Section, Long> sectionGoodTopicCount=new HashMap<Section, Long>();
	private Map<Section, Long> sectionNoReplyTopicCount=new HashMap<Section, Long>();
	
	
	
	
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		this.applicationContext=applicationContext;
	}
	
	



	@Override
	public void contextInitialized(ServletContextEvent servletContextEvent) {
		
		
		ServletContext application=servletContextEvent.getServletContext();
		WebApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContextEvent.getServletContext()); 
	
		ISectionService sectionService=(ISectionService) ctx.getBean("sectionService");
		ITopicService topicService=(ITopicService) ctx.getBean("topicService");
		IZoneService zoneService=(IZoneService) ctx.getBean("zoneService");
		
		
		List<Zone> zoneList=zoneService.findAllZoneList();
		application.setAttribute("zoneList", zoneList);
		
		for (Zone zone : zoneList) {
			int zoneid=zone.getId();
			List<Section> sectionList=sectionService.selectByZoneId(zoneid);
			application.setAttribute("sectionList"+zoneid, sectionList);
			for (Section section : sectionList) {
				Topic s_topic=new Topic(); 
				s_topic.setSectionid(section.getId());
				
				Long tatolCount=topicService.getTopicCount(s_topic);			//板块的总帖数
				s_topic.setGood(1);
				Long goodCount=topicService.getTopicCount(s_topic);			//板块的精华帖数
				s_topic.setGood(0);
				Long noReplyCount=topicService.getNoReplyTopicCount(s_topic);			//板块的无回复帖数
				
				sectionTopicCount.put(section, tatolCount);
				sectionGoodTopicCount.put(section, goodCount);
				sectionNoReplyTopicCount.put(section, noReplyCount);
			}
		}
		
		application.setAttribute("sectionTopicCount", sectionTopicCount);
		application.setAttribute("sectionGoodTopicCount", sectionGoodTopicCount);
		application.setAttribute("sectionNoReplyTopicCount", sectionNoReplyTopicCount);
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
	}

}
