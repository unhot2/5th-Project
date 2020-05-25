package com.team.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import com.team.dto.NoticeDTO;
import com.team.dto.QnaDTO;
import com.team.dto.ReplyDTO;


@Service
public interface BoardService {
	/* 게시판 글 가져오는 메소드 */
	public void list();
	/* 게시판 글작성 메소드 */
	public void write();
	/* 게시판 글수정 메소드 */
	public void update();
	/* 게시판 글삭제 메소드 */
	public void delete();
	/* 게시판 상세내용 보기 메소드 */
	public void detail();
	
	/* Service단에서 model로 값 넘겨서 활용 */
	/* 더 필요한 메소드 있을 시 인터페이스에 주석 작성 후 추가해서 사용하세요 */
	
	/* notice 글목록 */
	public List<NoticeDTO> noticeList(int noticestart,Model model);
	/* notice 글작성 */
	public int noticeWrite(NoticeDTO dto);
	/* notice 글수정 */
	public NoticeDTO noticeUpdate(NoticeDTO dto);
	/* notice 글 내용 수정 */
	public int noticeModify(NoticeDTO dto);
	/* notice 글삭제 */
	public void noticeDelete(NoticeDTO dto);
	/* notice 글 상세보기 */
	public NoticeDTO noticeDetail(NoticeDTO dto);
	/* notice 글 조회수 */
	public void noticeViewCnt(int id);
	/* notice 검색 */
	public List<NoticeDTO> noticeSearch(String noticeSearch);
	
	/* QnA 글 가져오는 메소드 */
	public List<QnaDTO> qnaList(int start,Model model);
	/* QnA 글작성 메소드 */
	public int qnaWrite(QnaDTO qnadto);
	/* QnA 글수정 메소드 */
	public void qnaUpdate(QnaDTO qnadto);
	/* QnA 글수정 메소드 */
	public int qnaModify(QnaDTO qnadto);
	/* QnA 글삭제 메소드 */
	public void qnaDelete(QnaDTO qnadto);
	/* QnA 상세내용 보기 메소드 */
	public QnaDTO qnaDetail(QnaDTO qnadto);
	/* Qna 글 조회수 */
	public void qnaViewCnt(int id);
	/* Qna 검색 */
	public List<QnaDTO> qnaSearch(String search);
	/* QnA 댓글 작성 */
	public void qnaReplyWrite(ReplyDTO dto);
	/* QnA 댓글 리스트 */
	public List<ReplyDTO> qnaReplyList(int idgroup);
}
