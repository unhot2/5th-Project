package com.team.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.dto.noticeDTO;


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
	public List<noticeDTO> noticeList();
	/* notice 글작성 */
	public int noticeWrite(noticeDTO dto);
	/* notice 글수정 */
	public noticeDTO noticeUpdate(noticeDTO dto);
	/* notice 글 내용 수정 */
	public void noticeModify(noticeDTO dto);
	/* notice 글삭제 */
	public void noticeDelete(noticeDTO dto);
	/* notice 글 상세보기 */
	public noticeDTO noticeDetail(noticeDTO dto);
}
