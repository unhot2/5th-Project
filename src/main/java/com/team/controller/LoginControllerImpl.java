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

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;

import org.springframework.web.servlet.ModelAndView;


import com.team.dto.LoginDTO;
import com.team.service.KakaoServiceImpl;
import com.team.service.LoginService;
import com.team.service.NaverServiceImpl;

@Controller
public class LoginControllerImpl implements LoginController {

	@Autowired
	LoginService service;
	@Autowired
	KakaoServiceImpl kakao;
	@Autowired
	NaverServiceImpl naver; 
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index";
	}
	
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView login(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String kakaoUrl = kakao.getUrl(session);
		String naverUrl = naver.getUrl(session);
		mav.setViewName("login/login");
		mav.addObject("kakao_url",kakaoUrl);
		mav.addObject("naver_url",naverUrl);
		return mav;
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.removeAttribute("access_Token");
		session.removeAttribute("userId");
		session.removeAttribute("userMaster");
		session.removeAttribute("userType");
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
	
	@ResponseBody
	@RequestMapping(value="idCheck",produces="application/json;charset=utf8")
	public int idCheck(@RequestParam(value="userId") String userId) throws JsonProcessingException  {

		System.out.println("userId2 의 값" +userId);

		boolean chk = service.idcheck(userId);
		int result = 0;
		if(chk) {
			result = 1;
			System.out.println("아이디 있음");
		}else {
			System.out.println("아이디 없음");
		}
			
		return result;
	}
	
	
	@RequestMapping("loginChk")
	public String loginChk(LoginDTO dto, HttpServletRequest request) {
		HttpSession session = null;
		if (service.loginChk(dto)) {
			session = request.getSession();
			session.setAttribute("userId", dto.getUserId());
			session.setAttribute("userMaster", service.getMaster(dto.getUserId()));
			session.setAttribute("userType","member");
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
	
	public boolean kakaoIdCheck(String id) {
		return service.kakaoIdCheck(id);
	}


	public boolean naverIdCheck(String id) {
		return service.naverIdCheck(id);
	}
	
	
	
}
