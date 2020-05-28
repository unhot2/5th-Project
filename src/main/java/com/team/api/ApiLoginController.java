package com.team.api;

import java.io.IOException;
import java.text.ParseException;
import javax.servlet.http.HttpSession;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.fasterxml.jackson.databind.JsonNode;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.team.controller.LoginController;
import com.team.dto.LoginDTO;
import com.team.service.KakaoServiceImpl;
import com.team.service.NaverServiceImpl;

@Controller
public class ApiLoginController {

	@Autowired
	KakaoServiceImpl kakao;
	@Autowired
	NaverServiceImpl naver;
	@Autowired
	LoginController LoCon;

	/* 카카오 로그인 API 부분 */
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
			session.setAttribute("userType", "kakao");
			return "redirect:index";
		} else {
			session.setAttribute("id", dto.getUserId());
			model.addAttribute("loginDTO", dto);
			return "login/apiMembership";
		}
	}

	@RequestMapping(value = "/kakaoLogout", produces = "application/json")
	public String Logout(HttpSession session) {
		kakao.kakaoLogout(session.getAttribute("access_Token"));
		session.removeAttribute("access_Token");
		session.removeAttribute("userId");
		session.removeAttribute("userMaster");
		session.removeAttribute("userType");
		return "redirect:index";
	}

	/* 네이버 로그인 API 부분 */
	@RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException, ParseException, org.json.simple.parser.ParseException {
		OAuth2AccessToken oauthToken;
		oauthToken = naver.getAccessToken(session, code, state);
		String apiResult = naver.getUserProfile(oauthToken);
		JSONParser parser = new JSONParser();
		Object obj = null;
		obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
		JSONObject response_obj = (JSONObject) jsonObj.get("response");
		LoginDTO dto = new LoginDTO();
		dto.setUserId((String) response_obj.get("id"));
		dto.setUserGender((String) response_obj.get("gender"));
		dto.setUserEmail((String) response_obj.get("email"));
		dto.setUserName((String) response_obj.get("name"));
		boolean chk = LoCon.naverIdCheck(dto.getUserId());
		if (chk) {
			session.setAttribute("userId", dto.getUserId());
			session.setAttribute("userMaster", 1);
			session.setAttribute("userType", "naver");
			return "redirect:index";
		} else {
			session.setAttribute("id", dto.getUserId());
			model.addAttribute("loginDTO", dto);
			return "login/apiMembership";
		}
	}

	@RequestMapping(value = "/naverLogout", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpSession session) throws IOException {
		session.removeAttribute("userId");
		session.removeAttribute("userMaster");
		session.removeAttribute("userType");
		return "redirect:index";
	}
}
