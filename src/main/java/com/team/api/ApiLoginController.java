package com.team.api;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;
import com.team.dto.LoginDTO;
import com.team.service.KakaoServiceImpl;

@Controller
public class ApiLoginController {

	@Autowired
	KakaoServiceImpl kakao;

	@RequestMapping(value = "/kakaoLogin", produces = "application/json", method = { RequestMethod.GET,
			RequestMethod.POST })
	public ModelAndView kakaoLogin(@RequestParam("code") String code, Model model, HttpSession session,
			HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		JsonNode node = kakao.getAccessToken(code);
		JsonNode access_token = node.get("access_token");
		JsonNode userInfo = kakao.getUserInfo(access_token);
		String kemail = null;
		String kname = null;
		String kgender = null;
		String kbirthday = null;
		String kage = null;
		String kimage = null;
		JsonNode properties = userInfo.path("properties");
		JsonNode kakao_account = userInfo.path("kakao_account");
		kemail = kakao_account.path("email").asText();
		kname = properties.path("nickname").asText();
		kimage = properties.path("profile_image").asText();
		kgender = kakao_account.path("gender").asText();
		kbirthday = kakao_account.path("birthday").asText();
		kage = kakao_account.path("age_range").asText();
		session.setAttribute("kemail", kemail);
		session.setAttribute("kname", kname);
		session.setAttribute("kgender", kgender);
		session.setAttribute("kbirthday", kbirthday);
		session.setAttribute("userId", kemail);
		session.setAttribute("userMaster", 1);
		mav.setViewName("index");
		return mav;
	}

	@RequestMapping(value = "/kakaologout", produces = "application/json")
	public String Logout(HttpSession session) {
		JsonNode node = kakao.Logout(session.getAttribute("token").toString());
		return "redirect:index.jsp";
	}
}
