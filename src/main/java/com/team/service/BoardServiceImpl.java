package com.team.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
	@Override
	public List<QnaDTO> qnalist() {
		List<QnaDTO> list = dao.qnalist();
		return list;
	}

	@Override
	public void qnawrite(QnaDTO qnadto) {
		System.out.println(qnadto.getName());
		System.out.println(qnadto.getTitle());
		System.out.println(qnadto.getContent());

		dao.qnawrite(qnadto);
	}

	@Override
	public void qnaupdate(QnaDTO qnadto) {
		System.out.println("qnadate값 :" + qnadto);
		dao.qnaupdate(qnadto);

	}

	@Override
	public void qnadelete(QnaDTO qnadto) {
		System.out.println(qnadto);
		dao.qnadelete(qnadto);

	}

	@Override
	public void qnadetail(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String id = request.getParameter("id");
		System.out.println(id);
		model.addAttribute("qnadetail", dao.qnadetail(id));
	}
}
