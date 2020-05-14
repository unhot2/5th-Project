package com.team.dao;

public interface LoginDAO {
	/* login Check 메소드 (dao연결)*/
	public boolean loginChk();
	/* 회원정보 DB저장 메소드 */
	public void saveMember();
	/* 회원정보 삭제 메소드 */
	public void delMember();
	/* 회원정보 수정 메소드 */
	public void updateMember();
	
	/* 더 필요한 메소드 있을 시 인터페이스에 주석 작성 후 추가해서 사용하세요 */
}
