package com.team.controller;




import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;

import com.team.dto.JoinDTO;
import com.team.dto.PayDTO;
import com.team.dto.PayHistoryDTO;
import com.team.service.CartService;
import com.team.service.PayService;

@Controller
public class PayControllerImpl {
	@Autowired
	PayService service;
	
	@Autowired
	CartService service2;
	
	@ResponseBody
	@RequestMapping("cardPay")
	public void cardPay(JoinDTO dto, HttpSession session, HttpServletRequest request) {
		//카드 결제 버튼 클릭시 이쪽으로 이동
		String userId = (String) session.getAttribute("userId");
		System.out.println("id값:"+userId);
		List<JoinDTO> list = cartGet(userId);
		System.out.println(list.get(0).getTitle());
		Calendar cal = Calendar.getInstance();
		 int year = cal.get(Calendar.YEAR);
		 String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		 String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
		 String subNum = "";
		 
		 for(int i = 1; i <= 6; i ++) {
		  subNum += (int)(Math.random() * 10);
		 }
		 
		 String orderId = ymd + "_" + subNum;
		
		
		service.cardPay(dto.getMessage(),list,orderId);
		service.payHistoryInsert(list,orderId,userId);
		
		paycartDelete(userId);
		
	}
	@RequestMapping("depositPay")
	public String depositPay(PayDTO dto) {
		service.depositPay(dto);
		return null;
	}

	
	@RequestMapping("card")
	public String cardView() {
		return "pay/cardPay";
	}
	@RequestMapping("paySuccess")
	public String paySuccessView() {
		return "pay/paySuccess";
	}
	@RequestMapping("payFail")
	public String payFailView() {
		return "pay/payFail";
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
	
	public List<JoinDTO> cartGet(String userId) {
		List<JoinDTO> list = service.cartGet(userId);
		return list;
	}
	@RequestMapping("paycartDelete")
	public void paycartDelete(String userId) {
		service.paycartDelete(userId);
	}
	
	
	
	
}
