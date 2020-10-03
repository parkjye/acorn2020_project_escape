package com.acorn.escape.timetable.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;


public interface TimetableService {
	public Map<String, Object> getList(HttpServletRequest request);
	public void resInsert(HttpServletRequest request);
	public void updateState(HttpServletRequest request);
	public void getResno(HttpServletRequest request, ModelAndView mView);
}
