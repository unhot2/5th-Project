package com.team.dao;

import java.util.ArrayList;
import java.util.List;

import com.team.dto.BoardDTO;
import com.team.dto.QnaDTO;

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
	
	/* QnA 글 가져오는 메소드 */
	public List<QnaDTO> qnalist();
	/* QnA 글작성 메소드 */
	public void qnawrite(QnaDTO qnadto);
	/* QnA 글수정 메소드 */
	public void qnaupdate(QnaDTO qnadto);
	/* QnA 글삭제 메소드 */
	public void qnadelete(QnaDTO qnadto);
	/* QnA 상세내용 보기 메소드 */
	public QnaDTO qnadetail(String id);

	
}
