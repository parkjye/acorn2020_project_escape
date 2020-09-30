package com.acorn.escape.confirm.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.acorn.escape.confirm.dto.ConfirmDto;
import com.acorn.escape.confirm.service.ConfirmService;

@Controller
public class ConfirmController {

	@Autowired
	private ConfirmService confirmService;
	
	@RequestMapping("/confirm/list")
	public String list() {
		return "/confirm/list";
	}
	
	@RequestMapping("/confirm/confirm")
	public ModelAndView confirm(@ModelAttribute ConfirmDto dto, HttpServletRequest request) {
		ModelAndView mView = new ModelAndView();
		confirmService.getList(dto, request);
		mView.setViewName("confirm/confirm");
		return mView;
	}
	
	@RequestMapping("/confirm/delete")
	public ModelAndView delete(ConfirmDto dto, ModelAndView mView, HttpServletRequest request, HttpServletResponse response) throws IOException {	
		List<ConfirmDto> list = confirmService.getList(dto, request);
		confirmService.deleteConfirm(dto);
		request.setAttribute("list", list);
		
		if(list.isEmpty()) {
			mView.setViewName("confirm/confirm");
			
		}else {
			mView.setViewName("home");
			response.setContentType("text/html; charset=UTF-8");
			 
			PrintWriter out = response.getWriter();
			 
			out.println("<script>alert('예약이 취소되었습니다.');</script>");
			 
			out.flush();
				
		}
		return mView;
	}
}




