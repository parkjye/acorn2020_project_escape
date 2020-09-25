package com.acorn.escape.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionController {
	
	/*
	 * spring framework 동작 중에 DoNotDeleteException type 예외가 발생하면 호출되는 메소드
	 * 
	 * */
	@ExceptionHandler(DoNotException.class)
	public ModelAndView notDelete(DoNotException nde) {
		
		//해당 오류가 발생 시, 원하는 작업 하고
		//view page 로 forward 이동해서 예외 정보를 응답한다. 
		ModelAndView mView = new ModelAndView();
		
		//exception이라는 키값으로 예외 객체를 담고 forward이동
		mView.addObject("exception", nde);
		mView.setViewName("error/info");
		
		return mView;
	}
}
