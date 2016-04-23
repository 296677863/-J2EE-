package com.lei.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.druid.util.StringUtils;
import com.lei.model.Section;
import com.lei.model.Topic;
import com.lei.service.ITopicService;
import com.lei.util.PageUtil;

@Controller
@RequestMapping("/")
public class TopicController {
	private Logger logger = LoggerFactory.getLogger(TopicController.class);
	
	ITopicService topicnService;
	

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


	

}
