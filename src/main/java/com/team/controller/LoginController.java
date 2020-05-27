package com.team.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.team.dto.LoginDTO;

public interface LoginController {
//	화면연결 메소드
	/* 기본화면 연결 메소드 */
	public String home();

	/* login 화면 연결 메소드 */
	public String login();

	/* logout 연결 메소드 (반환값 login.jsp) */
	public String logout(HttpServletRequest request);

	/* 회원가입 창 연결 메소드 */
	public String membership();

//	dao연결 메소드
		
	/* login Check 메소드 (dao연결) */
	public String loginChk(LoginDTO dto, HttpServletRequest request);
	
	/* 회원가입 아이디 중복 확인 메소드 */
	public int idCheck(@PathVariable("idcheck") String id) throws JsonProcessingException;

	/* 회원정보 DB저장 메소드 */
	public String saveMember(LoginDTO dto);

	/* 회원정보 삭제 메소드 */
	public String deleteMember(LoginDTO dto);

	/* 회원정보 수정 메소드 */
	public String updateMember(LoginDTO dto);

	/* 회원 목록 메소드 */
	public String memberList(Model model);

	/* 회원 정보 메소드 */
	public String memberInfo(LoginDTO dto, Model model);

	/* 회원정보 수정 메소드(유저용) */
	public String updateUserMember(LoginDTO dto, Model model);

	/* 더 필요한 메소드 있을 시 인터페이스에 주석 작성 후 추가해서 사용하세요 */
}
