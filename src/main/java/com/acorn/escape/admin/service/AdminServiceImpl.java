package com.acorn.escape.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acorn.escape.admin.dao.AdminDao;
import com.acorn.escape.admin.dto.AdminDto;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao adminDao;

	@Override
	public List<AdminDto> getList(HttpServletRequest request) {
		
		
		String date = request.getParameter("date");
		String name = request.getParameter("name");
		AdminDto dto = new AdminDto();
		dto.setBname(name);
		dto.setResdate(date);;
		List<AdminDto> list = adminDao.getList(dto);
		return list;
}

	@Override
	public void setList(HttpServletRequest request) {
		String date = request.getParameter("date");
		String name = request.getParameter("name");
		String thema = request.getParameter("thema");
		String time = request.getParameter("time");
		String state = request.getParameter("state");
		AdminDto dto = new AdminDto();
		dto.setBname(name);
		dto.setResdate(date);
		dto.setThema(thema);
		dto.setTime(time);
		dto.setState(state);
		adminDao.setList(dto);
	}

	@Override
	public List<AdminDto> selectOne(HttpServletRequest request) {
		String date = request.getParameter("day");
		String bname = request.getParameter("branch");
		AdminDto dto = new AdminDto();
		dto.setBname(bname);
		dto.setResdate(date);
		List<AdminDto> list =  adminDao.selectOne(dto);
		return list;
	}
}
