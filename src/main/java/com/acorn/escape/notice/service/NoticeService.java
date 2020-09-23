package com.acorn.escape.notice.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.acorn.escape.notice.dto.NoticeDto;

public interface NoticeService {
	public void getList(HttpServletRequest request);
	public void getDetail(HttpServletRequest request);
	public void saveContent(NoticeDto dto);
	public void updateContent(NoticeDto dto);
	public void deleteContent(int num, HttpServletRequest request);
	public List<NoticeDto> getList2(HttpServletRequest request);
}
