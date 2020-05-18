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
		model.addAttribute("noticeList",list);
		return "board/noticeList";
	}

	@RequestMapping("noticeWriteForm")
	public String noticeWriteForm() {
		return "board/noticeWriteForm";
	}
	
	@RequestMapping("noticeWrite")
	public String noticeWrite(NoticeDTO dto,Model model) {
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
	public String noticeUpdate(NoticeDTO dto,Model model) {
		NoticeDTO detail = service.noticeDetail(dto);
		model.addAttribute("noticeDetail",detail);
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
	public String noticeDetail(NoticeDTO dto,Model model) {
		service.noticeViewCnt(dto.getId());
		NoticeDTO detail = service.noticeDetail(dto);
		model.addAttribute("noticeDetail",detail);
		return "board/noticeDetail";
	}

	@RequestMapping("replyWrite")
	public String replyWrite() {
		
		return "replyWrite";
	}

	/* QnA 부분 */
	@RequestMapping("qnaList")
	public String qnalist(Model model) {
		System.out.println("qnaList실행");
		List<QnaDTO> list = service.qnalist();
		model.addAttribute("qnalist", list);
		return "board/qnaList";
	}

	@RequestMapping("qnawrite_view")
	public String qnawrite() {
		// TODO Auto-generated method stub
		return "board/qnawrite_view";
	}
	@RequestMapping("qnawrite_save")
	public String qnawrite_save(QnaDTO qnadto) {
		System.out.println("qnawrite_save실행");
		service.qnawrite(qnadto);
		return "redirect:qnaList";
	}

	@RequestMapping("qnaupdate")
	public String qnaupdate(QnaDTO qnadto) {
		System.out.println("수정 실행");
		service.qnaupdate(qnadto);
		return "redirect:qnaList";
	}

	@RequestMapping("qnadelete")
	public String qnadelete(QnaDTO qnadto) {
		service.qnadelete(qnadto);
		return "redirect:qnaList";
	}

	@RequestMapping("qnacontent_view")	
	public String qnadetail(Model model, HttpServletRequest re) {
		model.addAttribute("request", re);
		service.qnadetail(model);
		return "board/qnacontent_view";
	}
	@RequestMapping("qnarelpy_view")
	public String qnarelpy_view() {
		
		return "board/qnarelpy_view";
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
