package com.team.api;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.fasterxml.jackson.databind.JsonNode;
import com.team.controller.LoginController;
import com.team.dto.LoginDTO;
import com.team.service.KakaoServiceImpl;

@Controller
public class ApiLoginController {

	@Autowired
	KakaoServiceImpl kakao;
	@Autowired
	LoginController LoCon;
	

	@RequestMapping(value = "/kakaoLogin", produces = "application/json", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String kakaoLogin(@RequestParam("code") String code, Model model, HttpSession session) {
		JsonNode node = kakao.getAccessToken(code);
		JsonNode access_token = node.get("access_token");
		JsonNode userInfo = kakao.getUserInfo(access_token);
		JsonNode properties = userInfo.path("properties");
		JsonNode kakao_account = userInfo.path("kakao_account");
		LoginDTO dto = new LoginDTO();
		dto.setUserId(userInfo.path("id").asText());
		dto.setUserGender(kakao_account.path("gender").asText());
		dto.setUserEmail(kakao_account.path("email").asText());
		dto.setUserName(properties.path("nickname").asText());
		boolean chk = LoCon.kakaoIdCheck(userInfo.path("id").asText());
		if (chk) {
			session.setAttribute("userId", dto.getUserId());
			session.setAttribute("userMaster", 1);
			session.setAttribute("userType","kakao");
			return "index";
		}
		else {
			model.addAttribute("kakaoDTO",dto);
			return "login/kakaoMembership";
		}
	}

	@RequestMapping(value = "/kakaoLogout", produces = "application/json")
	public String Logout(HttpSession session) {
		kakao.kakaoLogout(session.getAttribute("access_Token"));
		session.removeAttribute("access_Token");
		session.removeAttribute("userId");
		session.removeAttribute("userMaster");
		return "index";
	}
}
