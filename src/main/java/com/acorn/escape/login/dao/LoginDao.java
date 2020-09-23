package com.acorn.escape.login.dao;

import com.acorn.escape.login.dto.LoginDto;

public interface LoginDao {
	public boolean isValid(LoginDto dto);
}
