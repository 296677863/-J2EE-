package com.lei.service;

import java.util.List;
import java.util.Map;

import com.lei.model.Section;

public interface ISectionService {
	public void saveSection(Section section);
	
	public void deleteSection(Section section) ;
	
	public List<Section> findSectionList(Map map);
	
	public Long getSectionCount(Section s_section);
	
	public Section findSectionById(int sectionId);

}
