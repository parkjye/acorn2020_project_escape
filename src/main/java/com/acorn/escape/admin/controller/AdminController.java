package com.acorn.escape.admin.controller;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.escape.admin.dto.AdminDto;
import com.acorn.escape.admin.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	private AdminService service;
	
	@RequestMapping("/admin/loginform")
	public String loginform(HttpServletRequest request) {
			String url=request.getParameter("url");
			if(url==null){
				String cPath=request.getContextPath();
				url=cPath+"/home.do"; 
			}
		 
			request.setAttribute("url", url);
			return "admin/loginform";
	}
	@RequestMapping("/admin/login")
	public ModelAndView login(AdminDto dto, ModelAndView mView,
			HttpSession session, HttpServletRequest request) {
		//로그인후 가야하는 목적지 정보
		String url=request.getParameter("url");
		//목적지 정보도 미리 인코딩 해 놓는다.
		String encodedUrl=URLEncoder.encode(url);
		//view  페이지에 전달하기 위해 ModelAndView 객체에 담아준다. 
		mView.addObject("url", url);
		mView.addObject("encodedUrl", encodedUrl);

		//service 객체를 이용해서 로그인 관련 처리를 한다.
		service.loginProcess(dto, mView, session);
		mView.setViewName("admin/login");
		return mView;
	}
	@RequestMapping("/admin/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/home.do";
	}
}
