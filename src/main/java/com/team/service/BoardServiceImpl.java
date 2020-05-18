package com.team.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.dao.BoardDAO;
import com.team.dto.QnaDTO;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO dao;
	
	@Override
	public void list() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void write() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void detail() {
		// TODO Auto-generated method stub
		
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
		System.out.println("qnadate값 :"+qnadto);
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
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		String id = request.getParameter("id");
		System.out.println(id);
		model.addAttribute("qnadetail", dao.qnadetail(id));
	}




//	@Override
//	public void qnalist(Model model) {
//		// TODO Auto-generated method stub
//		
//	}

}
