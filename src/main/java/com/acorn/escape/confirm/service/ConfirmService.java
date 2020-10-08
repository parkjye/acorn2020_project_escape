package com.acorn.escape.confirm.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.escape.confirm.dto.ConfirmDto;

public interface ConfirmService {
	public List<ConfirmDto> getList(ConfirmDto dto, HttpServletRequest request);
	public void deleteConfirm(ConfirmDto dto);
	
}