package com.team.dao;

import java.util.ArrayList;
import java.util.List;

import com.team.dto.boardDTO;
import com.team.dto.qnaDTO;

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
	
	/* QnA 글 가져오는 메소드 */
	public List<qnaDTO> qnalist();
	/* QnA 글작성 메소드 */
	public void qnawrite(qnaDTO qnadto);
	/* QnA 글수정 메소드 */
	public void qnaupdate(qnaDTO qnadto);
	/* QnA 글삭제 메소드 */
	public void qnadelete(qnaDTO qnadto);
	/* QnA 상세내용 보기 메소드 */
	public qnaDTO qnadetail(String id);

	
}
