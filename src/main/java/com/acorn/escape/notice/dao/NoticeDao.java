package com.acorn.escape.notice.dao;

import java.util.List;

import com.acorn.escape.notice.dto.NoticeDto;

public interface NoticeDao {
	public List<NoticeDto> getList(NoticeDto dto);
	public int getCount(NoticeDto dto);
	public void insert(NoticeDto dto);
	public NoticeDto getData(int num);
	public NoticeDto getData(NoticeDto dto);
	public void addViewCount(int num);
	public void delete(int num);
	public void update(NoticeDto dto);
}
