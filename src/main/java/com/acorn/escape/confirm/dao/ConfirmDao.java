package com.acorn.escape.confirm.dao;

import java.util.List;

import com.acorn.escape.confirm.dto.ConfirmDto;

public interface ConfirmDao {
	public List<ConfirmDto> getList(ConfirmDto dto);
	public void delete(ConfirmDto dto);
	
}
