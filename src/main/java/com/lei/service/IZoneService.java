package com.lei.service;

import java.util.List;
import java.util.Map;

import com.lei.model.Zone;
import com.lei.util.PageUtil;

public interface IZoneService {

	List<Zone> findZoneList(Map<String, Object> map);

}
