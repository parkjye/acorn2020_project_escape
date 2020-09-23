package com.acorn.escape.notice.service;

import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acorn.escape.notice.dao.NoticeDao;
import com.acorn.escape.notice.dto.NoticeDto;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeDao noticeDao;
	
	final int PAGE_ROW_COUNT=10;
	final int PAGE_DISPLAY_COUNT=5;
	
	@Override
	public void getList(HttpServletRequest request) {
		int pageNum=1;
		String strPageNum=request.getParameter("pageNum");
		if(strPageNum != null) {
			pageNum=Integer.parseInt(strPageNum);
		}
		int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
		int endRowNum=pageNum*PAGE_ROW_COUNT;
		
		String keyword=request.getParameter("keyword");
		String condition=request.getParameter("condition");
		if(keyword==null) {
			keyword="";
			condition="";
		}
		String encodedK=URLEncoder.encode(keyword);
		
		NoticeDto dto = new NoticeDto();
		dto.setStartRowNum(startRowNum);
		dto.setEndRowNum(endRowNum);
		
		if(!keyword.equals("")){ 
			if(condition.equals("title_content")){
				dto.setTitle(keyword);
				dto.setContent(keyword);	
			}else if(condition.equals("title")){
				dto.setTitle(keyword);
			}else if(condition.equals("writer")){
				dto.setWriter(keyword);
			}
		}
		List<NoticeDto> list = noticeDao.getList(dto);
		int totalRow=noticeDao.getCount(dto);
		
		int totalPageCount=
				(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
		int startPageNum=
			1+((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
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
		
		String keyword=request.getParameter("keyword"); 
		String condition=request.getParameter("condition"); 
		if(keyword==null){
			keyword="";
			condition="";
		}
		String encodedK=URLEncoder.encode(keyword);
		
		
		NoticeDto dto=new NoticeDto();
		dto.setNum(num);
		
		if(!keyword.equals("")){
			if(condition.equals("title_content")){
				dto.setTitle(keyword);
				dto.setContent(keyword);	
			}else if(condition.equals("title")){
				dto.setTitle(keyword);
			}else if(condition.equals("writer")){
				dto.setWriter(keyword);
			}
		}
		
		NoticeDto resultDto=noticeDao.getData(dto);
		
		request.setAttribute("dto", resultDto);
		request.setAttribute("condition", condition);
		request.setAttribute("keyword", keyword);
		request.setAttribute("encodedK", encodedK);
		
		noticeDao.addViewCount(num);
		
		final int PAGE_ROW_COUNT=10;
		final int PAGE_DISPLAY_COUNT=5;
		
	}

	@Override
	public void saveContent(NoticeDto dto) {
		noticeDao.insert(dto);
	}

	@Override
	public void updateContent(NoticeDto dto) {
		noticeDao.update(dto);
	}

	@Override
	public void deleteContent(int num, HttpServletRequest request) {
		noticeDao.delete(num);
	}

	@Override
	public List<NoticeDto> getList2(HttpServletRequest request) {
		int pageNum=1;
		String strPageNum=request.getParameter("pageNum");
		if(strPageNum != null){
			pageNum=Integer.parseInt(strPageNum);
		}
		int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
		int endRowNum=pageNum*PAGE_ROW_COUNT;
		String keyword=request.getParameter("keyword"); 
		String condition=request.getParameter("condition"); 
		if(keyword==null){
			keyword="";  
			condition="";
		}
		String encodedK=URLEncoder.encode(keyword);
		NoticeDto dto = new NoticeDto();
		dto.setStartRowNum(startRowNum);
		dto.setEndRowNum(endRowNum);
		
		if(!keyword.equals("")){  
			if(condition.equals("title_content")){
				dto.setTitle(keyword);
				dto.setContent(keyword);	
			}else if(condition.equals("title")){
				dto.setTitle(keyword);
			}else if(condition.equals("writer")){
				dto.setWriter(keyword);
			}
		}
		
		List<NoticeDto> list=noticeDao.getList(dto);

		return list;
	}

}
