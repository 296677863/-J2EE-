package com.lei.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.druid.util.StringUtils;
import com.lei.model.Reply;
import com.lei.model.Section;
import com.lei.model.Topic;
import com.lei.model.User;
import com.lei.service.ISectionService;
import com.lei.service.ITopicService;
import com.lei.service.IUserService;
import com.lei.util.PageUtil;
import com.lei.view.TopicView;

@Controller
@RequestMapping("/")
public class TopicController {
	private Logger logger = LoggerFactory.getLogger(TopicController.class);
	
	ITopicService topicnService;
	
	IUserService userService;
	ISectionService sectionService;
	
	
	
	@Autowired
	public void setSectionService(ISectionService sectionService) {
		this.sectionService = sectionService;
	}

	@Autowired
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	@Autowired
	public void setTopicnService(ITopicService topicnService) {
		this.topicnService = topicnService;
	}
	
	@RequestMapping("topic_list")
	public @ResponseBody Map<String,Object> list(String page,String rows,Topic topic){
		Map<String,Object> mapReturn=new HashMap<String, Object>();
		Long total=topicnService.getTopicCount(topic);
		mapReturn.put("total", total);
		if (StringUtils.isEmpty(page)) {
			page="1";
		}
		if (StringUtils.isEmpty(rows)) {
			rows="10";
		}
		PageUtil pageUtil =new PageUtil(Integer.parseInt(page),Integer.parseInt(rows));
		Map<String,Object>map=new HashMap<String,Object>();
		
		map.put("topic",topic);
		map.put("pageUtil",pageUtil);
		
		List<Topic> topicList=topicnService.findTopicList(map);
		mapReturn.put("rows", topicList);
		return mapReturn;
	}
	@RequestMapping("f_topicList")
	public String topicList(String page,String rows,int sectionId,String sectionName,HttpServletRequest request){
		List<TopicView> topicViewList=new ArrayList<TopicView>();
		Topic topic=new Topic();
		topic.setSectionid(sectionId);
		Section section=sectionService.findSectionById(sectionId);
		HttpSession session=request.getSession();
		Long total=topicnService.getTopicCount(topic);
		session.setAttribute("total", total);
		session.setAttribute("sectionName", sectionName);
		if (StringUtils.isEmpty(page)) {
			page="1";
		}
		if (StringUtils.isEmpty(rows)) {
			rows="10";
		}
		PageUtil pageUtil =new PageUtil(Integer.parseInt(page),Integer.parseInt(rows));
		Map<String,Object>map=new HashMap<String,Object>();
		map.put("topic",topic);
		List<Topic> zdTopicList=topicnService.findZdTopicListBySectionId(map);
		session.setAttribute("zdTopicList", zdTopicList);
		map.put("pageUtil",pageUtil);
		map.put("sectionName",sectionName);
		List<Topic> ptTopicList=topicnService.findPtTopicListBySectionId(map);
		session.setAttribute("ptTopicList", ptTopicList);
		for(Topic s_topic:ptTopicList)
		{
			TopicView topicView=new TopicView();
			topicView.setSection(section);
			topicView.setTopic(s_topic);
			User user=userService.selectByPrimaryKey(s_topic.getUserid());
			topicView.setUser(user);
			List<Reply> replyList=topicnService.getReplyTopicList(s_topic);
			topicView.setReplyList(replyList);
			topicView.setReplyCount(replyList.size());
			topicViewList.add(topicView);
		}	
		session.setAttribute("topicViewList", topicViewList);
		return "topicList";
	}
	
	@RequestMapping("f_topicDetails")
	public String topicDetails(String page,String rows,int topicId,HttpServletRequest request){
	List<TopicView> topicViewList=new ArrayList<TopicView>();
		Topic topic =topicnService.findTopicById(topicId);
		HttpSession session=request.getSession();
			TopicView topicView=new TopicView();
			topicView.setTopic(topic);
			User user=userService.selectByPrimaryKey(topic.getUserid());
			topicView.setUser(user);
			List<Reply> replyList=topicnService.getReplyTopicList(topic);
			topicView.setReplyList(replyList);
			topicView.setReplyCount(replyList.size());
			topicViewList.add(topicView);
		session.setAttribute("topicViewList", topicViewList);
		return "topDetails";
	}
	
	


	

}
