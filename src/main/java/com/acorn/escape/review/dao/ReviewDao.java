package com.acorn.escape.review.dao;

import java.util.List;

import com.acorn.escape.review.dto.ReviewDto;

public interface ReviewDao {

	public List<ReviewDto> getList(ReviewDto reDto);
	public int getCount(ReviewDto reDto);
	
	public void addViewCount(int num);
	
	public ReviewDto getReview(int num);
	public ReviewDto getReviewKey(ReviewDto reDto);
	
	public void insertReview(ReviewDto reDto);
	public void deleteReview(int num);
	public void updateReview(ReviewDto dto);
}
