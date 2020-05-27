package com.team.api;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.team.service.KakaoServiceImpl;


@Controller
public class ApiLoginController {
   @Autowired
   KakaoServiceImpl kakao;
   @Autowired
   private NaverLoginBO naverLoginBO;
   private String apiResult = null;
   
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
          
         model.addAttribute("naver_url", naverAuthUrl);
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
         session.setAttribute("userType", nickname); // 세션 생성
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
      session.setAttribute("access_Token", access_token);
      session.setAttribute("kemail", kemail);
      session.setAttribute("kname", kname);
      session.setAttribute("kgender", kgender);
      session.setAttribute("kbirthday", kbirthday);
      session.setAttribute("userId", kemail);
      session.setAttribute("userMaster", 1);
      session.setAttribute("userType","kakao");
      mav.setViewName("index");
      return mav;
   }

   @RequestMapping(value = "/kakaoLogout", produces = "application/json")
   public String Logout(HttpSession session) {
      kakao.kakaoLogout(session.getAttribute("access_Token"));
      session.removeAttribute("access_Token");
      session.removeAttribute("userId");
      session.removeAttribute("userMaster");
      session.removeAttribute("kemail");
      session.removeAttribute("kname");
      session.removeAttribute("kgender");
      session.removeAttribute("kbirthday");
      return "index";
   }
}
