package com.team.dao;

import java.util.List;

import com.team.dto.JoinDTO;
import com.team.dto.PayDTO;
import com.team.dto.PayHistoryDTO;

public interface PayDAO {
	/* 카드 결제 DAO */
	public int cardPay(String message, JoinDTO dto, String orderId);
	/* 무통장 입금 결제 DAO */
	public String depositPay(PayDTO dto);
	/* 중복 결제 방지 DAO  */
	public String payCheck(String userId);
	/* 결제내역 테이블 insert */
	public void payHistoryInsert(JoinDTO joinDTO, String orderId, String userId);
	

	public List<JoinDTO> cartGet(String userId);
	public void paycartDelete(String userId);
	
	
	
	
}
