package com.acorn.escape.admin.service;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.acorn.escape.admin.dto.AdminDto;

public interface AdminService {
	public List<AdminDto> getList(HttpServletRequest request);
	public void setList(HttpServletRequest request);
	public List<AdminDto> selectOne(HttpServletRequest request);
}
