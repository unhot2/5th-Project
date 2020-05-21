package com.team.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.team.dto.NoticeDTO;
import com.team.dto.QnaDTO;

public interface BoardController {
	/* 게시판 글 가져오는 메소드 */
	public String list();
	/* 게시판 글작성 메소드 */
	public String write();
	/* 게시판 글수정 메소드 */
	public String update();
	/* 게시판 글수정 메소드2 */
	public String noticeModify(HttpServletRequest request, Model model, NoticeDTO dto);
	/* 게시판 글삭제 메소드 */
	public String delete();
	/* 게시판 상세내용 보기 메소드 */
	public String detail();
	
	/* 더 필요한 메소드 있을 시 인터페이스에 주석 작성 후 추가해서 사용하세요 */
	/* notice 글목록 */
	public String noticeList(Model model);
	/* notice 글작성 */
	public String noticeWrite(NoticeDTO dto,Model model);
	/* notice 글수정 */
	public String noticeUpdate(NoticeDTO dto,Model model);
	/* notice 글삭제 */
	public String noticeDelete(NoticeDTO dto);
	/* notice 글 상세보기 */
	public String noticeDetail(NoticeDTO dto, Model model);

	/* QnA 글 가져오는 메소드 */
	public String qnaList(Model model,@RequestParam("start")int start);
	/* QnA 글작성 메소드 */
	public String qnaWrite(QnaDTO qnadto);
	/* QnA 글수정 메소드 */
	public String qnaUpdate(QnaDTO qnadto, Model model);
	/* QnA 글수정 메소드2 */
	public String qnaModify(QnaDTO qnadto);
	/* QnA 글삭제 메소드 */
	public String qnaDelete(QnaDTO qnadto);
	/* QnA 상세내용 보기 메소드 */
	public String qnaDetail(QnaDTO qnadto, Model model);

}
