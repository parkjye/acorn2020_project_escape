package com.acorn.escape.confirm.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.escape.confirm.dao.ConfirmDao;
import com.acorn.escape.confirm.dto.ConfirmDto;
import com.acorn.escape.notice.dto.NoticeDto;

@Service
public class ConfirmServiceImpl implements ConfirmService {
	
	@Autowired
	private ConfirmDao confirmDao;

	@Override
	public List<ConfirmDto> getList(ConfirmDto dto, HttpServletRequest request) {
		List<ConfirmDto> list = confirmDao.getList(dto);
		request.setAttribute("list", list);
		String res_no = request.getParameter("res_no");
		dto.setRes_no(res_no);
		return list;
	}

	@Override
	public void deleteConfirm(ConfirmDto dto) {
		List<ConfirmDto> list = confirmDao.getList(dto);
		confirmDao.update(confirmDao.getData(dto));
		confirmDao.delete(dto);
	}


}
