package com.team.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.team.dto.NoticeDTO;
import com.team.dto.NoticeReplyDTO;
import com.team.dto.QnaDTO;
import com.team.dto.ReplyDTO;
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
	public String noticeList(Model model, @RequestParam(value = "noticestart", defaultValue = "1") int noticestart) {
		List<NoticeDTO> list = service.noticeList(noticestart, model);
		model.addAttribute("noticeList", list);
		model.addAttribute("noticestart", noticestart);
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
		model.addAttribute("noticestart", 0);
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
		int num = service.noticeModify(dto);
		if (num == 1) {
			System.out.println("저장성공");
		} else {
			System.out.println("저장실패");
		}
		model.addAttribute("noticestart", 0);

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
		NoticeDTO noticedto = service.noticeDetail(dto);
		model.addAttribute("noticeReplyList",noticeReplyList(noticedto.getIdgroup()));
		model.addAttribute("noticeDetail", noticedto);
		return "board/noticeDetail";
	}

	@RequestMapping("noticeReply")
	public String noticerelpy_view() {
		return "board/noticeReply";
	}

	@RequestMapping("noticeSearch")
	public String noticeSearch(@RequestParam("noticeSearch") String noticeSearch, Model model) {
		ArrayList<NoticeDTO> list = (ArrayList<NoticeDTO>) service.noticeSearch(noticeSearch);
		model.addAttribute("noticeList", list);
		return "board/noticeList";
	}
	
	@RequestMapping("noticeReplyWrite")
	public String noticeReplyWrite(NoticeReplyDTO replydto, Model model, NoticeDTO dto) {
		service.noticeReplyWrite(replydto);
		return noticeDetail(dto, model);
	}

	public ArrayList<NoticeReplyDTO> noticeReplyList(int idgroup) {
		ArrayList<NoticeReplyDTO> list = (ArrayList<NoticeReplyDTO>) service.noticeReplyList(idgroup);
		return list;
	}
	
	/* QnA 부분 */
	@RequestMapping("qnaList")
	public String qnaList(Model model, @RequestParam(value = "start", defaultValue = "1") int start) {
		List<QnaDTO> list = service.qnaList(start, model);
		model.addAttribute("qnaList", list);
		model.addAttribute("start", start);
		return "board/qnaList";
	}

	@RequestMapping("qnaSave")
	public String qnaSave() {
		return "board/qnaWrite";
	}

	@RequestMapping("qnaWrite")
	public String qnaWrite(QnaDTO qnadto, Model model) {
		int chk = service.qnaWrite(qnadto);
		if (chk == 1) {
			System.out.println("저장성공");
			
		} else {
			System.out.println("저장실패");
		}
		model.addAttribute("start", 0);
		return "redirect:qnaList";
	}

	@RequestMapping("qnaUpdate")
	public String qnaUpdate(QnaDTO qnadto, Model model) {
		model.addAttribute("qnaUpdate", service.qnaDetail(qnadto));
		return "board/qnaModify";
	}

	@RequestMapping("qnaModify")
	public String qnaModify(QnaDTO qnadto, Model model) {
		int num = service.qnaModify(qnadto);
		if (num == 1) {
			System.out.println("저장성공");
		} else {
			System.out.println("저장실패");
		}
		model.addAttribute("start", 0);
		return "redirect:qnaList";
	}

	@RequestMapping("qnaDelete")
	public String qnaDelete(QnaDTO qnadto) {
		service.qnaDelete(qnadto);
		return "redirect:qnaList";
	}

	@RequestMapping("qnaDetail")
	public String qnaDetail(QnaDTO qnadto, Model model) {
		service.qnaViewCnt(qnadto.getId());
		QnaDTO dto = service.qnaDetail(qnadto);
		model.addAttribute("qnaReplyList", qnaReplyList(dto.getIdgroup()));
		model.addAttribute("qnaDetail", dto);
		return "board/qnaDetail";
	}

	@RequestMapping("qnaReply")
	public String qnarelpy_view() {
		return "board/qnaReply";
	}

	@RequestMapping("qnaSearch")
	public String qnaSearch(@RequestParam("qnaSearch") String search, Model model) {
		ArrayList<QnaDTO> list = (ArrayList<QnaDTO>) service.qnaSearch(search);
		model.addAttribute("qnaList", list);
		return "board/qnaList";
	}

	@RequestMapping("qnaReplyWrite")
	public String qnaReplyWrite(ReplyDTO dto, Model model, QnaDTO qnadto) {
		service.qnaReplyWrite(dto);
		return qnaDetail(qnadto, model);
	}

	public ArrayList<ReplyDTO> qnaReplyList(int idgroup) {
		ArrayList<ReplyDTO> list = (ArrayList<ReplyDTO>) service.qnaReplyList(idgroup);
		return list;
	}

	

}
