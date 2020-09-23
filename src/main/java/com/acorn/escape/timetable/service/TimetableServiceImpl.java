package com.acorn.escape.timetable.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acorn.escape.timetable.dao.TimetableDao;
import com.acorn.escape.timetable.dto.TimetableDto;

@Service
public class TimetableServiceImpl implements TimetableService {
	@Autowired
	private TimetableDao timeDao;

	@Override
	public Map<String,Object> getList(HttpServletRequest request) {
		String date=request.getParameter("date");
		String name=request.getParameter("name");
		String thema=request.getParameter("thema");
		TimetableDto dto=new TimetableDto();
		Map<String, Object> map=new HashMap<>();
		if(name != null && thema.equals("total")) {
			dto.setResdate(date);
			dto.setBname(name);
			List<TimetableDto> list=timeDao.getTable(dto);
			map.put("list",list);
		}else {
			dto.setResdate(date);
			dto.setBname(name);
			dto.setThema(thema);
			List<TimetableDto> list=timeDao.getTable2(dto);
			map.put("list",list);
		}
		return map;
	}
	
	
}
