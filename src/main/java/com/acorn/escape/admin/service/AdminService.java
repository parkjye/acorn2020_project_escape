package com.acorn.escape.admin.service;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.escape.admin.dto.AdminDto;

public interface AdminService {
	public void loginProcess(AdminDto dto, ModelAndView mView,
			HttpSession session);
}
