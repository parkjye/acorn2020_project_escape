package com.acorn.escape.timetable.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acorn.escape.timetable.dao.TimetableDao;
import com.acorn.escape.timetable.dto.ResInfoDto;
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

	@Override
	public void resInsert(HttpServletRequest request) {
		String res_name=request.getParameter("resname");
		String resdate=request.getParameter("resdate");
		String time=request.getParameter("time");
		String bname=request.getParameter("bname");
		String thema=request.getParameter("thema");
		String phone=request.getParameter("phone");
		String cost=request.getParameter("cost");
		String personal=request.getParameter("personal");
		String res_no=phone.substring(phone.length()-4, phone.length());
		ResInfoDto dto=new ResInfoDto(res_no, res_name, resdate,time, bname, thema, phone, cost, personal);
		timeDao.resInsert(dto);
		timeDao.stateUpdate(dto);
	}

	
	
}
