package com.team.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.dto.qnaDTO;
import com.team.service.BoardService;

@Controller
public class BoardControllerImpl implements BoardController {
	
	@Autowired
	BoardService service;
	
	@Override
	public String list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String write() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String update() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String delete() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String detail() {
		// TODO Auto-generated method stub
		return null;
	}

	/* QnA 부분 */
	@RequestMapping("qnaList")
	public String qnalist(Model model) {
		System.out.println("qnaList실행");
		List<qnaDTO> list = service.qnalist();
		model.addAttribute("qnalist", list);
		return "board/qnaList";
	}

	@RequestMapping("qnawrite_view")
	public String qnawrite() {
		// TODO Auto-generated method stub
		return "board/qnawrite_view";
	}
	@RequestMapping("qnawrite_save")
	public String qnawrite_save(qnaDTO qnadto) {
		System.out.println("qnawrite_save실행");
		service.qnawrite(qnadto);
		return "redirect:qnaList";
	}

	@RequestMapping("qnaupdate")
	public String qnaupdate(qnaDTO qnadto) {
		System.out.println("수정 실행");
		service.qnaupdate(qnadto);
		return "redirect:qnaList";
	}

	@RequestMapping("qnadelete")
	public String qnadelete(qnaDTO qnadto) {
		service.qnadelete(qnadto);
		return "redirect:qnaList";
	}

	@RequestMapping("qnacontent_view")	
	public String qnadetail(Model model, HttpServletRequest re) {
		model.addAttribute("request", re);
		service.qnadetail(model);
		return "board/qnacontent_view";
	}

	@Override
	public String qnalist() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String qnadetail() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String qnaupdate() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String qnadelete() {
		// TODO Auto-generated method stub
		return null;
	}


}
