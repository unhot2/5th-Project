package com.team.service;

import java.util.List;

import org.springframework.stereotype.Service;
import com.team.dto.LoginDTO;

@Service
public interface LoginService {
//	dao연결 메소드
	/* login Check 메소드 (dao연결) */
	public boolean loginChk(LoginDTO dto);
	
	/* 회원가입 아이디 중복 체크 */
	public boolean idcheck(String userId);

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

	/* 카카오 회원 ID 유무 확인 메소드 */
	public boolean kakaoIdCheck(String id);
	
	/* 네이버 회원 ID 유무 확인 메소드 */
	public boolean naverIdCheck(String id);
	
	/* API 통한 회원가입 메소드 */
	public void apiSaveMember(LoginDTO dto);
}
