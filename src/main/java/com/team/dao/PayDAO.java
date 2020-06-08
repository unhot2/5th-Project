package com.team.dao;

import com.team.dto.PayDTO;

public interface PayDAO {
	/* 카드 결제 DAO */
	public int cardPay(String message, String userId);
	/* 무통장 입금 결제 DAO */
	public String depositPay(PayDTO dto);
	/* 중복 결제 방지 DAO  */
	public String payCheck(String userId);
	
	
}
