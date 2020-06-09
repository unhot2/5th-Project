package com.team.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.team.dto.PayDTO;

import com.team.service.PayService;
@Controller
public class PayControllerImpl {
	@Autowired
	PayService service;
	
	@RequestMapping("cardPay")
	public String cardPay(PayDTO dto, HttpSession session) {
		//카드 결제 버튼 클릭시 이쪽으로 이동
		String userId = (String) session.getAttribute("userId");
		dto.setUserId((String) session.getAttribute("userId"));
		int cnt = service.cardPay(dto.getMessage(),userId);
		if(cnt == 0) {
			System.out.println("insert 실패");
		}else {
			System.out.println("insert 성공");
		}
		return "pay/cardPay";
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
	
	
}
