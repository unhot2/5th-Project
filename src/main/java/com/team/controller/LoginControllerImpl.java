package com.team.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.team.dto.LoginDTO;
import com.team.service.LoginService;

@Controller
public class LoginControllerImpl implements LoginController {

	@Autowired
	LoginService service;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index";
	}

	@RequestMapping("login")
	public String login() {
		return "login/login";
	}

	public String logout() {
		return null;
	}

	@RequestMapping("memberShip")
	public String membership() {
		return "login/memberShip";
	}

	@RequestMapping("loginChk")
	public String loginChk(LoginDTO dto, HttpServletRequest request) {
		HttpSession session = null;
		if (service.loginChk(dto)) {
			session = request.getSession();
			session.setAttribute("id", dto.getUserId());
			return "index";
		} else {
			return "login/login";
		}
	}

	@RequestMapping("saveMember")
	public String saveMember(LoginDTO dto) {
		System.out.println("controller단");
		System.out.println(dto.getUserId());
		System.out.println(dto.getUserPwd());
		System.out.println(dto.getUserName());
		System.out.println(dto.getUserAge());
		System.out.println(dto.getUserAddr());
		System.out.println(dto.getUserGender());
		System.out.println(dto.getUserBirth());
		System.out.println(dto.getUserEmail());
		int num = service.saveMember(dto);
		if (num == 1) {
			System.out.println("저장성공");
		}
		else {
			System.out.println("저장실패");
		}
		return "login/login";
	}

	@RequestMapping("delMember")
	public String delMember() {
		return "login/login";
	}

	@RequestMapping("updateMember")
	public String updateMember() {
		// TODO Auto-generated method stub
		return null;
	}

	@RequestMapping("memberInfo")
	public String memberInfo(Model model) {
		service.memberInfo(model);
		return "login/memberInfo";
	}

	@RequestMapping("memberInfoDetail")
	public String memberInfoDetail(@RequestParam("id") String id) {
		service.memberInfoDetail(id, null);
		return "login/memberInfoDetail";
	}

}
