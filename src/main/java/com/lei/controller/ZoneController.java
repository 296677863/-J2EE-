package com.lei.controller;

import java.util.ArrayList;
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
import com.lei.model.Zone;
import com.lei.service.IZoneService;
import com.lei.util.PageUtil;

@Controller
@RequestMapping("/")
public class ZoneController {
	private Logger logger = LoggerFactory.getLogger(ZoneController.class);
	
	IZoneService zoneService;
	
	
	@Autowired
	public void setZoneService(IZoneService zoneService) {
		this.zoneService = zoneService;
	}



	@RequestMapping("zone_list")
	public @ResponseBody Map<String,Object> list(String page,String rows,Zone s_zone){
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
		
		map.put("s_zone",s_zone);
		map.put("pageUtil",pageUtil);
		List<Zone> zoneList=zoneService.findZoneList(map);
		mapReturn.put("rows", zoneList);
		return mapReturn;
	}
	

}
