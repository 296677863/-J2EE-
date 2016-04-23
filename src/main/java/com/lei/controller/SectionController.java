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
import com.lei.model.Zone;
import com.lei.service.ISectionService;
import com.lei.util.PageUtil;

@Controller
@RequestMapping("/")
public class SectionController {
	private Logger logger = LoggerFactory.getLogger(SectionController.class);
	
	ISectionService sectionService;
	

	@Autowired
	public void setSectionService(ISectionService sectionService) {
		this.sectionService = sectionService;
	}





	@RequestMapping("section_list")
	public @ResponseBody Map<String,Object> list(String page,String rows,Section section){
		Map<String,Object> mapReturn=new HashMap<String, Object>();
		int total=11;
		mapReturn.put("total", total);
		if (StringUtils.isEmpty(page)) {
			page="1";
		}
		if (StringUtils.isEmpty(rows)) {
			rows="10";
		}
		PageUtil pageUtil =new PageUtil(Integer.parseInt(page),Integer.parseInt(rows));
		Map<String,Object>map=new HashMap<String,Object>();
		
		map.put("section",section);
		map.put("pageUtil",pageUtil);
		List<Section> sectionList=sectionService.findSectionList(map);
		mapReturn.put("rows", sectionList);
		return mapReturn;
	}
	

}
