package com.team.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.team.dto.NoticeDTO;
import com.team.dto.QnaDTO;
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
		ArrayList<NoticeDTO> list = (ArrayList<NoticeDTO>) service.noticeList();
		model.addAttribute("noticeList", list);
		return "board/noticeList";
	}

	@RequestMapping("noticeSave")
	public String noticeSave() {
		return "board/noticeWrite";
	}

	@RequestMapping("noticeWrite")
	public String noticeWrite(NoticeDTO dto, Model model) {
		int chk = service.noticeWrite(dto);
		if (chk == 1) {
			System.out.println("저장성공");
		} else {
			System.out.println("저장실패");
		}
		return "redirect:noticeList";
	}

	@RequestMapping("noticeUpdate")
	public String noticeUpdate(NoticeDTO dto, Model model) {
		NoticeDTO detail = service.noticeDetail(dto);
		model.addAttribute("noticeDetail", detail);
		return "board/noticeModify";
	}

	@RequestMapping("noticeModify")
	public String noticeModify(HttpServletRequest request, Model model, NoticeDTO dto) {
		service.noticeModify(dto);
		return "redirect:noticeList";
	}

	@RequestMapping("noticeDelete")
	public String noticeDelete(NoticeDTO dto) {
		service.noticeDelete(dto);
		return "redirect:noticeList";
	}

	@RequestMapping("noticeDetail")
	public String noticeDetail(NoticeDTO dto, Model model) {
		service.noticeViewCnt(dto.getId());
		model.addAttribute("noticeDetail", service.noticeDetail(dto));
		return "board/noticeDetail";
	}

	@RequestMapping("replyWrite")
	public String replyWrite() {

		return "replyWrite";
	}

	/* QnA 부분 */
	@RequestMapping("qnaList")
	public String qnaList(Model model) {
		List<QnaDTO> list = service.qnaList();
		model.addAttribute("qnaList", list);
		return "board/qnaList";
	}

	@RequestMapping("qnaSave")
	public String qnaSave() {
		return "board/qnaWrite";
	}

	@RequestMapping("qnaWrite")
	public String qnaWrite(QnaDTO qnadto) {
		service.qnaWrite(qnadto);
		return "redirect:qnaList";
	}

	@RequestMapping("qnaUpdate")
	public String qnaUpdate(QnaDTO qnadto) {
		service.qnaUpdate(qnadto);
		return "redirect:qnaList";
	}

	public String qnaModify() {
		return null;
	}

	@RequestMapping("qnaDelete")
	public String qnaDelete(QnaDTO qnadto) {
		service.qnaDelete(qnadto);
		return "redirect:qnaList";
	}

	@RequestMapping("qnaDetail")
	public String qnaDetail(QnaDTO qnadto, Model model) {
		model.addAttribute("qnaDetail",service.qnaDetail(qnadto));
		return "board/qnaDetail";
	}

	@RequestMapping("qnaReply")
	public String qnarelpy_view() {
		return "board/qnaReply";
	}

}
