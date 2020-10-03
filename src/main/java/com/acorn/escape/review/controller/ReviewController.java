package com.acorn.escape.review.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.escape.review.dto.ReviewDto;
import com.acorn.escape.review.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	//글 목록
	@RequestMapping("/review/list")
	public ModelAndView getList(HttpServletRequest request, ModelAndView mView) {
		reviewService.getList(request);
		mView.setViewName("review/list");
		
		return mView;
	}
	
	//글 상세보기
	@RequestMapping("/review/review-detail")
	public ModelAndView detail(HttpServletRequest request, ModelAndView mView) {
		reviewService.getDetail(request);
		mView.setViewName("review/review-detail");
		
		return mView;
	}
	
	//글쓰기
	@RequestMapping("/review/insert-form")
	public ModelAndView insertForm(ModelAndView mView) {

		mView.setViewName("review/insert-form");
		return mView;
	}
	
	@RequestMapping(value = "/review/insert", method=RequestMethod.POST)
	public ModelAndView insert(ReviewDto reDto, ModelAndView mView, HttpSession session) {	
		reviewService.saveContent(reDto);
		mView.setViewName("review/insert");
		
		return mView;
	}
	
	//삭제
	@RequestMapping("/review/private/delete")
	public ModelAndView delete(HttpServletRequest request, ModelAndView mView, ReviewDto reviewDto) {
		
		reviewService.deleteContent(request, reviewDto);
		mView.setViewName("redirect:/review/list.do");
		
		return mView;
	}
	
	//수정
	@RequestMapping("/review/private/update-form")
	public ModelAndView updateform(HttpServletRequest request, ModelAndView mView) {
		reviewService.getDetail(request);
		mView.setViewName("review/private/update-form");
		
		return mView;
	}
	
	@RequestMapping(value="/review/private/update", method=RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request, ReviewDto reDto, ModelAndView mView) {
		reviewService.updateContent(request, reDto);
		mView.setViewName("review/private/update");
		
		return mView;
	}
	
}
