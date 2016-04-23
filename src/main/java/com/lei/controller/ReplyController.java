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
import com.lei.model.Reply;
import com.lei.model.Section;
import com.lei.service.IReplyService;
import com.lei.util.PageUtil;

@Controller
@RequestMapping("/")
public class ReplyController {
	private Logger logger = LoggerFactory.getLogger(ReplyController.class);
	
	IReplyService replyService;
	
	@Autowired
	public void setReplyService(IReplyService replyService) {
		this.replyService = replyService;
	}


	
	

}
