package com.team.controller;

public interface BoardController {
	/* 게시판 글 가져오는 메소드 */
	public String list();
	/* 게시판 글작성 메소드 */
	public String write();
	/* 게시판 글수정 메소드 */
	public String update();
	/* 게시판 글삭제 메소드 */
	public String delete();
	/* 게시판 상세내용 보기 메소드 */
	public String detail();
	
	/* 더 필요한 메소드 있을 시 인터페이스에 주석 작성 후 추가해서 사용하세요 */
}
