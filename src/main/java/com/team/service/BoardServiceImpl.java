package com.team.service;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.dao.BoardDAO;
import com.team.dto.NoticeDTO;
import com.team.dto.NoticeReplyDTO;
import com.team.dto.QnaDTO;
import com.team.dto.ReplyDTO;

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

	public List<NoticeDTO> noticeList(int noticestart,Model model) {
		List<NoticeDTO> list = dao.noticeList(noticestart,model);
		return list;
	}

	public int noticeWrite(NoticeDTO dto) {
		return dao.noticeWrite(dto);
	}

	public NoticeDTO noticeUpdate(NoticeDTO dto) {
		return dao.noticeDetail(dto);
	}

	public int noticeModify(NoticeDTO dto) {
		return dao.noticeModify(dto);
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
	public List<NoticeDTO> noticeSearch(String noticeSearch) {
		return dao.noticeSearch(noticeSearch);
	}
	public void noticeReplyWrite(NoticeReplyDTO replydto) {
		dao.noticeReplyWrite(replydto);
	}

	public List<NoticeReplyDTO> noticeReplyList(int idgroup) {
		return dao.noticeReplyList(idgroup);
	}
	
	/* QNA 부분 */
	public List<QnaDTO> qnaList(int start,Model model) {
		List<QnaDTO> list = dao.qnaList(start,model);
		return list;
	}

	public int qnaWrite(QnaDTO qnadto) {
		return dao.qnaWrite(qnadto);
	}

	public void qnaUpdate(QnaDTO qnadto) {
		dao.qnaUpdate(qnadto);

	}

	public int qnaModify(QnaDTO qnadto) {
		return dao.qnaModify(qnadto);
	
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

	public List<QnaDTO> qnaSearch(String search) {
		return dao.qnaSearch(search);
	}

	public void qnaReplyWrite(ReplyDTO dto) {
		dao.qnaReplyWrite(dto);
	}

	public List<ReplyDTO> qnaReplyList(int idgroup) {
		return dao.qnaReplyList(idgroup);
	}



}
