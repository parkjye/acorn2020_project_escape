package com.acorn.escape.review.service;

import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acorn.escape.review.dao.ReviewDao;
import com.acorn.escape.review.dto.ReviewDto;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	private ReviewDao reviewDao;
	
	//한 페이지당 row수
	final int PAGE_ROW_COUNT=10;
	final int PAGE_DISPLAY_COUNT=5;

	@Override
	public void getList(HttpServletRequest request) {
		
		//페이지 번호
		int pageNum=1;
		String strPageNum=request.getParameter("pageNum");
		
		if(strPageNum != null){
			pageNum=Integer.parseInt(strPageNum);
		}
		
		int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
		int endRowNum=pageNum*PAGE_ROW_COUNT;
		
		//키워드 검색
		String keyword=request.getParameter("keyword");
		String condition=request.getParameter("condition");
		
		if(keyword==null){
			keyword="";
			condition="";
		}
		
		String encodedK=URLEncoder.encode(keyword);
		
		//reviewDto 객체생성
		ReviewDto reDto = new ReviewDto();

		reDto.setStartRowNum(startRowNum);
		reDto.setEndRowNum(endRowNum);
		
		if(!keyword.equals("")){
			if(condition.equals("title_content")){
				reDto.setTitle(keyword);
				reDto.setContent(keyword);
			}else if(condition.equals("title")){
				reDto.setTitle(keyword);
			}else if(condition.equals("writer")){
				reDto.setWriter(keyword);
			}
		}
		
		//목록
		List<ReviewDto> list = reviewDao.getList(reDto);
		
		int totalRow=reviewDao.getCount(reDto);
		
		int totalPageCount=(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
		int startPageNum=1+((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
		int endPageNum=startPageNum+PAGE_DISPLAY_COUNT-1;
		
		if(totalPageCount < endPageNum){
			endPageNum=totalPageCount;
		}
		
		request.setAttribute("list", list);
		request.setAttribute("startPageNum", startPageNum);
		request.setAttribute("endPageNum", endPageNum);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("totalPageCount", totalPageCount);
		request.setAttribute("condition", condition);
		request.setAttribute("keyword", keyword);
		request.setAttribute("encodedK", encodedK);	
		
	}

	@Override
	public void getDetail(HttpServletRequest request) {
		
		int num=Integer.parseInt(request.getParameter("num"));
		
		//키워드 검색
		String keyword=request.getParameter("keyword");
		String condition=request.getParameter("condition");
		
		if(keyword==null){
			keyword="";  
			condition="";
		}
		
		String encodedK=URLEncoder.encode(keyword);

		//객체 생성
		ReviewDto reDto = new ReviewDto();
		reDto.setNum(num);

		if(!keyword.equals("")){
			if(condition.equals("title_content")){
				reDto.setTitle(keyword);
				reDto.setContent(keyword);	
			}else if(condition.equals("title")){
				reDto.setTitle(keyword);
			}else if(condition.equals("writer")){
				reDto.setWriter(keyword);
			}
		}
		
		//글 자세히 보기 
		ReviewDto resultDto = reviewDao.getReview(num);

		request.setAttribute("dto", resultDto);
		request.setAttribute("condition", condition);
		request.setAttribute("keyword", keyword);
		request.setAttribute("encodedK", encodedK);
		
		//조회수
		reviewDao.addViewCount(num);

	}

	@Override
	public void saveContent(ReviewDto reviewDto) {
		reviewDao.insertReview(reviewDto);
		
	}

	@Override
	public void updateContent(ReviewDto reviewDto) {
		reviewDao.updateReview(reviewDto);
		
	}

	@Override
	public void deleteContent(int num, HttpServletRequest request) {
		
		ReviewDto dto = reviewDao.getReview(num);
		
		//비밀번호 확인 후 삭제
		String pwd = (String)request.getSession().getAttribute("pwd");
		
		//비밀번호 다르면 예외처리
		if(!pwd.equals(dto.getPwd())) {
			
		}
	
		reviewDao.deleteReview(num);
	}
	
	
}
