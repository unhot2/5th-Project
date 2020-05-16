package com.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.dao.BoardDAO;
import com.team.dto.noticeDTO;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO dao;

	
	public void list() {
		// TODO Auto-generated method stub
		
	}

	
	public void write() {
		// TODO Auto-generated method stub
		
	}

	
	public void update() {
		// TODO Auto-generated method stub
		
	}

	
	public void delete() {
		// TODO Auto-generated method stub
		
	}

	
	public void detail() {
		// TODO Auto-generated method stub
		
	}

	
	public List<noticeDTO> noticeList() {
		List<noticeDTO> list =  dao.noticeList();
		return list;
	}

	
	public int noticeWrite(noticeDTO dto) {
		return dao.noticeWrite(dto);
	}

	
	public noticeDTO noticeUpdate(noticeDTO dto) {
		return dao.noticeDetail(dto);
	}

	public void noticeModify(noticeDTO dto) {
		dao.noticeModify(dto);
	}
	
	public void noticeDelete(noticeDTO dto) {
		dao.noticeDelete(dto);
	}

	
	public noticeDTO noticeDetail(noticeDTO dto) {
		return dao.noticeDetail(dto);
	}


}
