package com.team.controller;



import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.team.dto.CartDTO;
import com.team.dto.JoinDTO;
import com.team.dto.PayDTO;
import com.team.dto.PayDetailDTO;
import com.team.dto.PayHistoryDTO;
import com.team.service.CartService;
import com.team.service.PayService;

import net.sf.json.JSONObject;
@Controller
public class PayControllerImpl {
	@Autowired
	PayService service;
	
	@Autowired
	CartService service2;
	
	@ResponseBody
	@RequestMapping("cardPay")
	public int cardPay(PayDTO dto,PayHistoryDTO dto2, HttpSession session, HttpServletRequest request) {
		//카드 결제 버튼 클릭시 이쪽으로 이동
		String userId = (String) session.getAttribute("userId");
		System.out.println("id값:"+userId);
		List<JoinDTO> list= service2.cartList(userId);
		Calendar cal = Calendar.getInstance();
		 int year = cal.get(Calendar.YEAR);
		 String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		 String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
		 String subNum = "";
		 
		 for(int i = 1; i <= 6; i ++) {
		  subNum += (int)(Math.random() * 10);
		 }
		 
		 String orderId = ymd + "_" + subNum;
		
		
		int cnt = service.cardPay(dto.getMessage(),userId,orderId);
		service.payHistoryInsert(list,orderId,userId);
		if(cnt == 0) {
			System.out.println("insert 실패");
		}else {
			System.out.println("insert 성공");
		}
		return cnt;
	}
	@RequestMapping("depositPay")
	public String depositPay(PayDTO dto) {
		service.depositPay(dto);
		return null;
	}

	
	@ResponseBody
	@RequestMapping(value="payCheck",produces="application/json;charset=utf8")
	public int payCheck(@RequestParam(value="userId") String userId) throws JsonProcessingException  {
		boolean chk = service.payCheck(userId);
		System.out.println("payCheck 실행");
		int result = 0;
		if(chk) {
			result = 1;
		}
		return result;
	}
	
	
	public String getToken(HttpServletRequest request

			,HttpServletResponse response

			,JSONObject json

			,String requestURL) throws Exception{

	

		// requestURL 아임퐅크 고유키, 시크릿 키 정보를 포함하는 url 정보 
		
		

		String _token = "";

		try{

			String requestString = "https://api.iamport.kr/users/getToken";

			URL url = new URL(requestURL);

			HttpURLConnection connection = (HttpURLConnection) url.openConnection();

			connection.setDoOutput(true); 				

			connection.setInstanceFollowRedirects(false);  

			connection.setRequestMethod("POST");

			connection.setRequestProperty("Content-Type", "application/json");

			OutputStream os= connection.getOutputStream();

			os.write(json.toString().getBytes());

			connection.connect();

			StringBuilder sb = new StringBuilder(); 

			if (connection.getResponseCode() == HttpURLConnection.HTTP_OK) {

				BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"));

			

				String line = null;  

				while ((line = br.readLine()) != null) {  

					sb.append(line + "\n");  

				}

				br.close();

				requestString = sb.toString();

			

			}

			os.flush();

			connection.disconnect();

			

			JSONParser jsonParser = new JSONParser();

			JSONObject jsonObj = (JSONObject) jsonParser.parse(requestString);

			

			if((Long)jsonObj.get("code")  == 0){

				JSONObject getToken = (JSONObject) jsonObj.get("response");

				System.out.println("getToken==>>"+getToken.get("access_token") );

				_token = (String)getToken.get("access_token");

			}

			

		}catch(Exception e){

			e.printStackTrace();

			_token = "";

		}

		return _token;

	}
	
	
	
}
