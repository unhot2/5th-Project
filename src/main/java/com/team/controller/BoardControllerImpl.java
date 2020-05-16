package com.team.controller;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.dto.noticeDTO;
import com.team.service.BoardService;

@Controller
public class BoardControllerImpl implements BoardController {
	
	@Autowired
	BoardService service;
	
	
	
	public String list() {
		// TODO Auto-generated method stub
		return null;
	}

	
	public String write() {
		// TODO Auto-generated method stub
		return null;
	}

	
	public String update() {
		// TODO Auto-generated method stub
		return null;
	}

	
	public String delete() {
		// TODO Auto-generated method stub
		return null;
	}

	
	public String detail() {
		// TODO Auto-generated method stub
		return null;
	}

	@RequestMapping("noticeList")
	public String noticeList(Model model) {
		ArrayList<noticeDTO> list = (ArrayList<noticeDTO>) service.noticeList();
		model.addAttribute("noticeList",list);
		return "board/noticeList";
	}

	@RequestMapping("noticeWriteForm")
	public String noticeWriteForm() {
		return "board/noticeWriteForm";
	}
	
	@RequestMapping("noticeWrite")
	public String noticeWrite(noticeDTO dto,Model model) {
		int chk = service.noticeWrite(dto);
		if (chk == 1) {
			System.out.println("저장성공");
		}
		else {
			System.out.println("저장실패");
		}
		return "redirect:noticeList";
	}
	

	@RequestMapping("noticeUpdate")
	public String noticeUpdate(noticeDTO dto,Model model) {
		noticeDTO detail = service.noticeDetail(dto);
		model.addAttribute("noticeDetail",detail);
		return "board/noticeModify";
	}
	
	@RequestMapping("noticeModify")
	public String noticeModify(HttpServletRequest request, Model model, noticeDTO dto) {
		service.noticeModify(dto);
		return "redirect:noticeList";
	}

	@RequestMapping("noticeDelete")
	public String noticeDelete(noticeDTO dto) {
		service.noticeDelete(dto);
		return "redirect:noticeList";
	}

	@RequestMapping("noticeDetail")
	public String noticeDetail(noticeDTO dto,Model model) {
		noticeDTO detail = service.noticeDetail(dto);
		model.addAttribute("noticeDetail",detail);
		return "board/noticeDetail";
	}


}
