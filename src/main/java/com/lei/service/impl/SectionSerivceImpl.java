package com.lei.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lei.dao.SectionMapper;
import com.lei.model.Section;
import com.lei.service.ISectionService;

@Service("sectionService")
public class SectionSerivceImpl implements ISectionService {
	private SectionMapper sectionMapper;

	public SectionMapper getSectionMapper() {
		return sectionMapper;
	}
	@Autowired
	public void setSectionMapper(SectionMapper sectionMapper) {
		this.sectionMapper = sectionMapper;
	}
	@Override
	public void saveSection(Section section) {
		sectionMapper.insert(section);
	}
	@Override
	public void deleteSection(Section section) {
		sectionMapper.deleteByPrimaryKey(section.getId());
	}
	@Override
	public List<Section> findSectionList(Map map) {
		return sectionMapper.findSectionList(map);
	}
	@Override
	public Long getSectionCount(Section s_section) {
		return sectionMapper.getSectionCount(s_section);
	}
	@Override
	public Section findSectionById(int sectionId) {
		return sectionMapper.selectByPrimaryKey(sectionId);
	}
	

}
