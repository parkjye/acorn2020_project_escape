package com.acorn.escape.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionController {
	
	@ExceptionHandler(DoNotException.class)
	public ModelAndView notDelete(DoNotException nde) {
		
		ModelAndView mView = new ModelAndView();
		
		mView.addObject("exception", nde);
		mView.setViewName("review/error/info");
		
		return mView;
	}
}
