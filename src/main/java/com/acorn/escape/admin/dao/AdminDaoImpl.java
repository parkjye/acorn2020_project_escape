package com.acorn.escape.admin.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.acorn.escape.admin.dto.AdminDto;

@Repository
public class AdminDaoImpl implements AdminDao{
	@Autowired
	private SqlSession session;

	@Override
	public boolean isValid(AdminDto dto) {
		String aid=session.selectOne("admin.isValid", dto);
		if(aid==null) {
			return false;
		}else {
			return true;
		}
	}
	
}
