package com.acorn.escape.login.service;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.escape.login.dto.LoginDto;

public interface LoginService {
	public void loginProcess(LoginDto dto, ModelAndView mView, HttpSession session);
}
