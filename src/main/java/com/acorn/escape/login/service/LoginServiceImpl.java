package com.acorn.escape.login.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.escape.login.dao.LoginDao;
import com.acorn.escape.login.dto.LoginDto;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired
	private LoginDao loginDao;

	@Override
	public void loginProcess(LoginDto dto, ModelAndView mView,
			HttpSession session) {
		boolean isValid=loginDao.isValid(dto);
		
		if(isValid) {
			session.setAttribute("id", dto.getId());
			mView.addObject("isSuccess",true);
		}else {
			mView.addObject("isSuccess",false);
		}
	}
}
