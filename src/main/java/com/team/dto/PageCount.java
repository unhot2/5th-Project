package com.team.dto;

public class PageCount {
	/* 게시판 페이별 시작 번호 
	 * [1] 페이지에 글이 1번,2,3번 있어야 한다고 할 때 1번을 말한다.*/
	private int startPage;
	/* 게시판 페이별 끝 번호 
	 * [1] 페이지에 글이 1번,2,3번 있어야 한다고 할 때 3번을 말한다.*/
	private int endPage;
	/* 페이지 번호 마지막 번호 
	 * ex) [1] [2] [3] [4] 일때 4
	 * 페이지의 끝을 정해주는 번호 */
	private int totalPage;

	
	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
}
