package com.lei.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lei.dao.ZoneMapper;
import com.lei.model.Zone;
import com.lei.service.IZoneService;
import com.lei.util.PageUtil;

@Service("zoneService")
public class ZoneServiceImpl implements IZoneService {
	private ZoneMapper zoneMapper;
	
	

	public ZoneMapper getZoneMapper() {
		return zoneMapper;
	}


	@Autowired
	public void setZoneMapper(ZoneMapper zoneMapper) {
		this.zoneMapper = zoneMapper;
	}




	@Override
	public List<Zone> findZoneList(Map<String, Object> map) {
		return zoneMapper.findZoneList(map);
	}


	@Override
	public List<Zone> findAllZoneList() {
		return zoneMapper.findAllZoneList();
	}

}
