package com.acorn.escape.timetable.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;


public interface TimetableService {
	public Map<String, Object> getList(HttpServletRequest request);
	public void resInsert(HttpServletRequest request);
	public void updateState(HttpServletRequest request);
}
