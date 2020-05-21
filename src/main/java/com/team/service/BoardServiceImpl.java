package com.team.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.dao.BoardDAO;
import com.team.dto.NoticeDTO;
import com.team.dto.QnaDTO;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO dao;

	public void list() {
	}

	public void write() {

	}

	public void update() {
	}

	public void delete() {
	}

	public void detail() {
	}

	public List<NoticeDTO> noticeList() {
		List<NoticeDTO> list = dao.noticeList();
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

	/* QNA 부분 */
	public List<QnaDTO> qnaList(int start,Model model) {
		List<QnaDTO> list = dao.qnaList(start,model);
		return list;
	}

	public void qnaWrite(QnaDTO qnadto) {
		dao.qnaWrite(qnadto);
	}

	public void qnaUpdate(QnaDTO qnadto) {
		dao.qnaUpdate(qnadto);

	}

	public void qnaModify(QnaDTO qnadto) {
	
	}
	
	public void qnaDelete(QnaDTO qnadto) {
		dao.qnaDelete(qnadto);
	}

	public QnaDTO qnaDetail(QnaDTO qnadto) {
		return dao.qnaDetail(qnadto);
	}

	public void qnaViewCnt(int id) {
		dao.qnaViewCnt(id);
	}

	public List<QnaDTO> search(String search) {
		return dao.search(search);
	}

}
