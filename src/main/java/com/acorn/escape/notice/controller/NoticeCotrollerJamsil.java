package com.acorn.escape.notice.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.escape.notice.dto.NoticeDto;
import com.acorn.escape.notice.service.NoticeService;

@Controller
public class NoticeCotrollerJamsil{
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("/notice/jamsil/list")
	public ModelAndView getList(HttpServletRequest request, ModelAndView mView) {
		noticeService.getList(request);
		mView.setViewName("notice/jamsil/list");
		return mView;
	}

	@RequestMapping("/notice/jamsil/detail")
	public ModelAndView detail(HttpServletRequest request, ModelAndView mView) {
		noticeService.getDetail(request);
		mView.setViewName("notice/jamsil/detail");
		return mView;
	}
	
	@RequestMapping("/notice/jamsil/insertform")
	public ModelAndView insertForm(ModelAndView mView) {
		mView.setViewName("notice/jamsil/insertform");
		return mView;
	}
	
	@RequestMapping(value = "/notice/jamsil/insert", method = RequestMethod.POST)
	public ModelAndView insert(NoticeDto dto, ModelAndView mView, HttpSession session) {
		String aid=(String)session.getAttribute("aid");
		dto.setWriter(aid);
		noticeService.saveContent(dto);
		mView.setViewName("notice/jamsil/insert");
		return mView;
	}
	
	@RequestMapping("/notice/jamsil/updateform")
	public ModelAndView updateform(HttpServletRequest request,
			ModelAndView mView) {
		noticeService.getDetail(request);
		mView.setViewName("notice/jamsil/updateform");
		return mView;
	}
	@RequestMapping("/notice/jamsil/update")
	public ModelAndView update(NoticeDto dto, ModelAndView mView) {
		noticeService.updateContent(dto);
		mView.setViewName("notice/jamsil/update");
		return mView;
	}
	
	@RequestMapping("/notice/jamsil/delete")
	public ModelAndView delete(int num, HttpServletRequest request,
			ModelAndView mView) {
		noticeService.deleteContent(num, request);
		mView.setViewName("redirect:/notice/jamsil/list.do");
		return mView;
	}
	
}
