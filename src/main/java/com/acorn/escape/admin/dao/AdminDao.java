package com.acorn.escape.admin.dao;

import java.util.List;

import com.acorn.escape.admin.dto.AdminDto;

public interface AdminDao {
	public List<AdminDto> getList(AdminDto dto);
	public void setList(AdminDto dto);
	public List<AdminDto> selectOne(AdminDto dto);
}
