package com.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.dao.BoardDAO;
import com.team.dto.NoticeDTO;

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

	
	public List<NoticeDTO> noticeList() {
		List<NoticeDTO> list =  dao.noticeList();
		return list;
	}

	
	public int noticeWrite(NoticeDTO dto) {
		return dao.noticeWrite(dto);
	}

	
	public NoticeDTO noticeUpdate(NoticeDTO dto) {
		return dao.noticeDetail(dto);
	}

	public void noticeModify(NoticeDTO dto) {
		dao.noticeModify(dto);
	}
	
	public void noticeDelete(NoticeDTO dto) {
		dao.noticeDelete(dto);
	}

	
	public NoticeDTO noticeDetail(NoticeDTO dto) {
		return dao.noticeDetail(dto);
	}

	public void noticeViewCnt(int id) {
		dao.noticeViewCnt(id);
	}


}
