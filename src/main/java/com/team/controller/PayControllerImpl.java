package com.team.controller;

import org.springframework.beans.factory.annotation.Autowired;

import com.team.dto.BuyDTO;

import com.team.service.PayService;

public class PayControllerImpl {
	@Autowired
	PayService service;
	public String cartPay(BuyDTO dto) {
		//카드 결제 버튼 클릭시 이쪽으로 이동
		service.buyCard();
		return null;
	}
	public String depositPay(BuyDTO dto) {
		return null;
	}
}
