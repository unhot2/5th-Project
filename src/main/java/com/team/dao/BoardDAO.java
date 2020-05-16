package com.team.dao;

import java.util.ArrayList;
import java.util.List;

import com.team.dto.boardDTO;
import com.team.dto.noticeDTO;

public interface BoardDAO {
	/* 게시글 모두 가져오기 */
	public ArrayList<boardDTO> list();
	/* 게시판 글작성 메소드 */
	public void write();
	/* 게시판 글수정 메소드 */
	public void update();
	/* 게시판 글삭제 메소드 */
	public void delete();
	/* 게시판 상세내용 보기 메소드 */
	public boardDTO detail();
	
	/* notice 글목록 */
	public List<noticeDTO> noticeList();
	/* notice 글작성 */
	public int noticeWrite(noticeDTO dto);
	/* notice 글수정 */
	public noticeDTO noticeUpdate(noticeDTO dto);
	/* notice 글 내용수정 */
	public void noticeModify(noticeDTO dto);
	/* notice 글삭제 */
	public void noticeDelete(noticeDTO dto);
	/* notice 글 상세보기 */
	public noticeDTO noticeDetail(noticeDTO dto);
	
}
