package com.team.dao;

import java.util.ArrayList;
import java.util.List;

import com.team.dto.BoardDTO;
import com.team.dto.NoticeDTO;

public interface BoardDAO {
	/* 게시글 모두 가져오기 */
	public ArrayList<BoardDTO> list();
	/* 게시판 글작성 메소드 */
	public void write();
	/* 게시판 글수정 메소드 */
	public void update();
	/* 게시판 글삭제 메소드 */
	public void delete();
	/* 게시판 상세내용 보기 메소드 */
	public BoardDTO detail();
	
	/* notice 글목록 */
	public List<NoticeDTO> noticeList();
	/* notice 글작성 */
	public int noticeWrite(NoticeDTO dto);
	/* notice 글수정 */
	public NoticeDTO noticeUpdate(NoticeDTO dto);
	/* notice 글 내용수정 */
	public void noticeModify(NoticeDTO dto);
	/* notice 글삭제 */
	public void noticeDelete(NoticeDTO dto);
	/* notice 글 상세보기 */
	public NoticeDTO noticeDetail(NoticeDTO dto);
	/* notice 글 조회수 */
	public void noticeViewCnt(int id);
	
}
