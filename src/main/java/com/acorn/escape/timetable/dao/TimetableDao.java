package com.acorn.escape.timetable.dao;

import java.util.List;

import com.acorn.escape.timetable.dto.ResInfoDto;
import com.acorn.escape.timetable.dto.TimetableDto;

public interface TimetableDao {
	public List<TimetableDto> getTable(TimetableDto dto);
	public List<TimetableDto> getTable2(TimetableDto dto);
	public void updateTime(TimetableDto dto);
	public void resInsert(ResInfoDto dto);
	public void stateUpdate(ResInfoDto dto);
	public void stateUpdate2(TimetableDto dto);
	public String selectTime();
	public void TstatePosible(TimetableDto dto);
	public void BstatePosible(TimetableDto dto);
}
