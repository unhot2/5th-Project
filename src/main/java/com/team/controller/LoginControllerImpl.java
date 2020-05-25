package com.team.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	@RequestMapping("home")
	public String index() {
		return "index";
	}
	@RequestMapping("login2")
	public String login2() {
		return "login/login2";
	}
	@RequestMapping("login")
	public String login() {
		return "login/login";
	}

	@RequestMapping("logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("userId");
		session.removeAttribute("userMaster");
		return "index";
	}

	@RequestMapping("memberShip")
	public String membership() {
		return "login/memberShip";
	}

	@RequestMapping("memberList")
	public String memberList(Model model) {
		model.addAttribute("memberList",(ArrayList<LoginDTO>)service.memberList());
		return "login/memberList";
	}
	
	@RequestMapping("memberInfo")
	public String memberInfo(LoginDTO dto,Model model) {
		
		LoginDTO login = service.memberInfo(dto);
		
		Date Mbirth = login.getUserBirth();
		
		DateFormat dateFormat = new SimpleDateFormat ("yyyy-MM-dd");
		String birth = dateFormat.format(Mbirth);
		
		model.addAttribute("userBirth",birth);
		model.addAttribute("memberInfo",login);
		return "login/memberInfo";
	}
	
	@RequestMapping("loginChk")
	public String loginChk(LoginDTO dto, HttpServletRequest request) {
		HttpSession session = null;
		if (service.loginChk(dto)) {
			session = request.getSession();
			session.setAttribute("userId", dto.getUserId());
			session.setAttribute("userMaster", service.getMaster(dto.getUserId()));
			return "index";
		} else {
			return "login/login";
		}
	}

	@RequestMapping("saveMember")
	public String saveMember(LoginDTO dto) {
		int num = service.saveMember(dto);
		if (num == 1) {
			System.out.println("저장성공");
		}
		else {
			System.out.println("저장실패");
		}
		return "login/login";
	}

	@RequestMapping("deleteMember")
	public String deleteMember(LoginDTO dto) {
		service.deleteMember(dto);
		return "redirect:memberList";
	}

	@RequestMapping("updateMember")
	public String updateMember(LoginDTO dto) {
		service.updateMember(dto);
		return "redirect:memberList";
	}
	
	@RequestMapping("updateUserMember")
	public String updateUserMember(LoginDTO dto,Model model) {
		model.addAttribute("memberInfo",service.memberInfo(dto));
		return "login/updateUserMember";
	}
	
	@RequestMapping("updateUser")
	public String updateUser(LoginDTO dto,Model model) {
		service.updateMember(dto);
		model.addAttribute("memberInfo",service.memberInfo(dto));
		return "index";
	}
	
}
