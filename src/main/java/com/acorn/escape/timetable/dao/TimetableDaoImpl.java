package com.acorn.escape.timetable.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.escape.timetable.dto.ResInfoDto;
import com.acorn.escape.timetable.dto.TimetableDto;

@Repository
public class TimetableDaoImpl implements TimetableDao {
	@Autowired
	private SqlSession session;
	@Override
	public List<TimetableDto> getTable(TimetableDto dto) {
		return session.selectList("timetable.getTable",dto);
	}
	@Override
	public List<TimetableDto> getTable2(TimetableDto dto) {
		return session.selectList("timetable.getList",dto);
	}
	@Override
	public void resInsert(ResInfoDto dto) {
		session.insert("timetable.resInsert",dto);
	}

}
