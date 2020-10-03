package com.acorn.escape.timetable.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.escape.timetable.service.TimetableService;

@Controller
public class TimetableController {
	@Autowired
	private TimetableService timeService;
	
	@RequestMapping("/reservation/reservation_ajax")
	@ResponseBody
	public Map<String, Object> reservation(HttpServletRequest request) {
		 return timeService.getList(request);
	}
	
	@RequestMapping("/reservation/res_process")
	@ResponseBody
	public Map<String, Object> resprocess(HttpServletRequest request) {
		timeService.resInsert(request);
		Map<String, Object> map=new HashMap<String, Object>();
		String success="isSuccess";
		map.put("success", success);
		return map;
	}
	
	@RequestMapping("/reservation/reservation2")
	public String reservation2(HttpServletRequest request) {
		timeService.updateState(request);
		return "reservation/reservation2";
	}

	@RequestMapping("/reservation/res_detail")
	public ModelAndView res_detail(HttpServletRequest request,ModelAndView mView) {
		timeService.getResno(request, mView);
		mView.setViewName("reservation/res_detail");
		return mView;
	}

}
