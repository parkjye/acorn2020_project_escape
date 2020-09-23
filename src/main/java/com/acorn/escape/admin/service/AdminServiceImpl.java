package com.acorn.escape.admin.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.escape.admin.dao.AdminDao;
import com.acorn.escape.admin.dto.AdminDto;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao adminDao;
	
	@Override
	public void loginProcess(AdminDto dto, ModelAndView mView, HttpSession session) {
		boolean isValid=adminDao.isValid(dto);

		if(isValid) {
			session.setAttribute("aid", dto.getAid());
			mView.addObject("isSuccess", true);
		}else {
			mView.addObject("isSuccess", false);
		}
	}

}
