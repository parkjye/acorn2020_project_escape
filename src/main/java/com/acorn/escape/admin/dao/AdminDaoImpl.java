package com.acorn.escape.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.escape.admin.dto.AdminDto;

@Repository
public class AdminDaoImpl implements AdminDao{
	
	@Autowired
	private SqlSession session; 
	
	@Override
	public List<AdminDto> getList(AdminDto dto) {
		//해당 요일과 지점으로 모든 예약정보를 가져온다.
		List<AdminDto> list = session.selectList("admin.getlist",dto);
		return list;
	}

	@Override
	public void setList(AdminDto dto) {
		// TODO Auto-generated method stub
		session.update("admin.setlist",dto);
	}

	@Override
	public List<AdminDto> selectOne(AdminDto dto) {
		// TODO Auto-generated method stub
		List<AdminDto> list = session.selectList("admin.selectOne",dto);
		return list;
	}



}
