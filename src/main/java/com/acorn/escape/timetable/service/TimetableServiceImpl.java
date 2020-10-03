package com.acorn.escape.timetable.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

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
			timeDao.TstatePosible(dto);
			List<TimetableDto> list=timeDao.getTable(dto);
			map.put("list",list);
		}else {
			dto.setResdate(date);
			dto.setBname(name);
			dto.setThema(thema);
			timeDao.BstatePosible(dto);
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
		ResInfoDto dto=new ResInfoDto(res_name, resdate,time, bname, thema, phone, cost, personal);
		timeDao.resInsert(dto);
		timeDao.stateUpdate(dto);
	}

	@Override
	public void updateState(HttpServletRequest request) {
		String resdate=request.getParameter("date");
		String bname=request.getParameter("bname");
		String time=request.getParameter("time");
		String thema=request.getParameter("thema");
		TimetableDto dto=new TimetableDto();
		dto.setResdate(resdate);
		dto.setBname(bname);
		dto.setTime(time);
		dto.setThema(thema);
		timeDao.updateTime(dto);
		timeDao.stateUpdate2(dto);
		
	}

	@Override
	public void getResno(HttpServletRequest request, ModelAndView mView) {
		String resdate=request.getParameter("resdate");
		String bname=request.getParameter("bname");
		String time=request.getParameter("time");
		String thema=request.getParameter("thema");
		ResInfoDto dto=new ResInfoDto();
		dto.setResdate(resdate);
		dto.setBname(bname);
		dto.setTime(time);
		dto.setThema(thema);
		List<ResInfoDto> list=timeDao.getResinfo(dto);
		mView.addObject("list", list);

		
	}

	
	
}
