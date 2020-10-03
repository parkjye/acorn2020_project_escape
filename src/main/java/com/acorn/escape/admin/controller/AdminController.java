package com.acorn.escape.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acorn.escape.admin.dto.AdminDto;
import com.acorn.escape.admin.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	
	@RequestMapping("/supervise")
	public String supervise() {
		return "admin/supervise";
	}
	@RequestMapping("/supervise/getlist")
	@ResponseBody
	public List<AdminDto> getList(HttpServletRequest request ){
		
		return adminService.getList(request);
	}
	
	@RequestMapping("/supervise/setlist")
	@ResponseBody
	public void setList(HttpServletRequest request) {
		adminService.setList(request);
	}
	
	@RequestMapping("/supervise/getScheduleOne")
	@ResponseBody
	public List<AdminDto> selectOne(HttpServletRequest request) {
		return adminService.selectOne(request);
	}
}
