package com.team.api;
import java.io.IOException;
import javax.servlet.http.HttpSession;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.JsonNode;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.team.api.KakaoController;

@Controller
public class ApiLoginController {
	

	/**
	 * Handles requests for the application home page.
	 */

	
		/* NaverLoginBO */
		private NaverLoginBO naverLoginBO;
		private String apiResult = null;

		/* GoogleLogin */
		@Autowired
		private GoogleConnectionFactory googleConnectionFactory;
		@Autowired
		private OAuth2Parameters googleOAuth2Parameters;

		@Autowired
		private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
			this.naverLoginBO = naverLoginBO;
		}

		// 로그인 첫 화면 요청 메소드
		@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
		public String login(Model model, HttpSession session) {
			/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
			String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
			// https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
			 //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
			System.out.println("네이버:" + naverAuthUrl);
			 //네이버
			model.addAttribute("url", naverAuthUrl);
			/* 구글code 발행 */
			OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();
			String url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);

			System.out.println("구글:" + url);

			model.addAttribute("google_url", url);
			return "login/login";
		}

		// 네이버 로그인 성공시 callback호출 메소드
		@RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
		public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
				throws IOException, ParseException {
			System.out.println("여기는 callback");
			OAuth2AccessToken oauthToken;
			oauthToken = naverLoginBO.getAccessToken(session, code, state);
			// 1. 로그인 사용자 정보를 읽어온다.
			apiResult = naverLoginBO.getUserProfile(oauthToken); // String형식의 json데이터
			/**
			 * apiResult json 구조 {"resultcode":"00", "message":"success",
			 * "response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
			 **/
			// 2. String형식인 apiResult를 json형태로 바꿈
			JSONParser parser = new JSONParser();
			Object obj = parser.parse(apiResult);
			JSONObject jsonObj = (JSONObject) obj;
			// 3. 데이터 파싱
			// Top레벨 단계 _response 파싱
			JSONObject response_obj = (JSONObject) jsonObj.get("response");
			// response의 nickname값 파싱
			String nickname = (String) response_obj.get("nickname");
			System.out.println(nickname);
			// 4.파싱 닉네임 세션으로 저장
			session.setAttribute("sessionId", nickname); // 세션 생성
			model.addAttribute("result", apiResult);
			return "login/login";
		}

		// 로그아웃
		@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST })
		public String logout(HttpSession session) throws IOException {
			System.out.println("여기는 logout");
			session.invalidate();
			return "redirect:index.jsp";
		}

		@RequestMapping(value = "/kakaologin", produces = "application/json", method = { RequestMethod.GET,
				RequestMethod.POST })
		public String kakaoLogin(@RequestParam("code") String code, Model model, HttpSession session) {
			System.out.println("로그인 할때 임시 코드값");
			// 카카오 홈페이지에서 받은 결과 코드
			System.out.println(code);
			System.out.println("로그인 후 결과값");
			// 카카오 rest api 객체 선언
			KakaoController kr = new KakaoController();
			// 결과값을 node에 담아줌
			JsonNode node = kr.getAccessToken(code);
			// 결과값 출력
			System.out.println(node);
			// 노드 안에 있는 access_token값을 꺼내 문자열로 변환
			String token = node.get("access_token").toString();
			System.out.println(token);
			// 세션에 담아준다.
			session.setAttribute("token", token);

			return "index";
		}

		@RequestMapping(value = "/logoutkakao", produces = "application/json")
		public String Logout(HttpSession session) {
			// kakao restapi 객체 선언
			KakaoController kr = new KakaoController();
			// 노드에 로그아웃한 결과값음 담아줌 매개변수는 세션에 잇는 token을 가져와 문자열로 변환
			JsonNode node = kr.Logout(session.getAttribute("token").toString());
			// 결과 값 출력
			System.out.println("로그인 후 반환되는 아이디 : " + node.get("id"));
			session.invalidate();
			return "redirect:index.jsp";
		}
		/*
		 * // 로그인 첫 화면 요청 메소드
		 * 
		 * @RequestMapping(value = "/login", method = { RequestMethod.GET,
		 * RequestMethod.POST }) public String loginGoogle(Model model, HttpSession
		 * session) {
		 * 
		 * 구글code 발행 OAuth2Operations oauthOperations =
		 * googleConnectionFactory.getOAuthOperations(); String url =
		 * oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE,
		 * googleOAuth2Parameters);
		 * 
		 * System.out.println("구글:" + url);
		 * 
		 * model.addAttribute("google_url", url);
		 * 
		 * 생성한 인증 URL을 View로 전달 return "login"; }
		 */

		// 구글 Callback호출 메소드
		@RequestMapping(value = "/googlecallback", method = { RequestMethod.GET, RequestMethod.POST })
		public String googleCallback(Model model, @RequestParam String code) throws IOException {
			System.out.println("여기는 googleCallback");

			return "googleSuccess";
		}
	
}
