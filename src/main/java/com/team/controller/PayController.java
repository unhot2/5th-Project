package com.team.controller;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.team.dto.PayDTO;

public interface PayController {
	/* 카드 결제 버튼 클릭시 작동 메서드 */
	public String cardPay(PayDTO dto, HttpSession session);
	/* 무통장 입금 결제 버튼 클릭시 작동 메서드 */
	public String depositPay(PayDTO dto);
	/* 결제 두번 방지 */
	public int payCheck(@RequestParam(value="userId") String userId) throws JsonProcessingException ;
	/*  */
}
