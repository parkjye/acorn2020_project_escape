package com.acorn.escape.review.service;

import javax.servlet.http.HttpServletRequest;

import com.acorn.escape.review.dto.ReviewDto;

public interface ReviewService {
	public void getList(HttpServletRequest request);
	public void getDetail(HttpServletRequest request);
	
	public void saveContent(ReviewDto reviewDto);
	
	public void updateContent(HttpServletRequest request, ReviewDto reviewDto);
	public void deleteContent(HttpServletRequest request, ReviewDto reviewDto);

}
