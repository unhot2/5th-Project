package com.team.dao;

import java.util.List;

import com.team.dto.LoginDTO;

public interface LoginDAO {
	/* login Check 메소드 (dao연결)*/
	public List<LoginDTO> loginChk();
	/* 회원가입 아이디 중복 체크 */
	public String idCheck(String userId);
	/* 회원정보 DB저장 메소드 */
	public int saveMember(LoginDTO dto);
	/* 회원정보 삭제 메소드 */
	public void deleteMember(LoginDTO dto);
	/* 회원정보 수정 메소드 */
	public void updateMember(LoginDTO dto);
	/* 회원 목록 메소드 */
	public List<LoginDTO> memberList();
	/* 회원 정보 메소드 */
	public LoginDTO memberInfo(LoginDTO dto);
	/* 회원 관리자 권한 */
	public String getMaster(String id);
	
	/* 회원 ID 유무 확인 메소드 */
	public List<LoginDTO> kakaoIdCheck();
	
	
	/* 더 필요한 메소드 있을 시 인터페이스에 주석 작성 후 추가해서 사용하세요 */
}
