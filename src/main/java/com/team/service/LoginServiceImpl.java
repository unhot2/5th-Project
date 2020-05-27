package com.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.team.dao.LoginDAO;
import com.team.dto.LoginDTO;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	LoginDAO dao;

	public List<LoginDTO> memberList() {
		return dao.memberList();
	}

	public boolean loginChk(LoginDTO dto) {
		boolean chk = false;
		for (LoginDTO dbDto : dao.loginChk(dto)) {
			if (dto.getUserId().equals(dbDto.getUserId())) {
				if (dto.getUserPwd().equals(dbDto.getUserPwd())) {
					chk = true;
					System.out.println("로그인 성공");
				} else {
					System.out.println("비밀번호 틀림");
				}
			} else {
				System.out.println("아이디 없음");
			}
		}
		return chk;
	}
	
	public boolean idcheck(String userId) {
		boolean chk = false;
		if (userId.equals(dao.idCheck(userId))) {
			chk = true;
		}
		return chk;  
	}

	public int saveMember(LoginDTO dto) {
		return dao.saveMember(dto);
	}

	public void deleteMember(LoginDTO dto) {
		dao.deleteMember(dto);
	}

	public void updateMember(LoginDTO dto) {
		dao.updateMember(dto);
	}

	public void memberInfoDetail(String id, Object object) {

	}

	public LoginDTO memberInfo(LoginDTO dto) {
		return dao.memberInfo(dto);
	}

	public String getMaster(String id) {
		return dao.getMaster(id);
	}

}
