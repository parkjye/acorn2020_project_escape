package com.acorn.escape.confirm.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.escape.confirm.dto.ConfirmDto;

@Repository
public class ConfirmDaoImpl implements ConfirmDao{

	@Autowired
	private SqlSession session;

	@Override
	public List<ConfirmDto> getList(ConfirmDto dto) {
		return session.selectList("confirm.getList", dto);
	}

	@Override
	public void delete(ConfirmDto dto) {
		session.delete("confirm.delete", dto);
		
	}
	public ConfirmDto getData(ConfirmDto dto) {
		return session.selectOne("confirm.getData", dto);
	}

	@Override
	public void update(ConfirmDto dto) {
		// TODO Auto-generated method stub
		session.update("confirm.update",dto);
	}


}
