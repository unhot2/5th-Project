package com.team.service;

import java.util.List;
import com.team.dto.JoinDTO;
import com.team.dto.PayDTO;
import com.team.dto.ProductDTO;

public interface PayService {
	/* 카드 결제  Service*/
	public void cardPay(String message, JoinDTO dto, String orderId);	
	
	
	/* 장바구니 값 가져오는 메소드  Service*/
	public List<JoinDTO> cartGet(String userId);
	
	/* 결제 완료 후 장바구니 비우기 Service*/
	public void paycartDelete(String userId);
	
	/* 바로결제를 위한 해당 Product 정보 가져오기  Service*/
	public ProductDTO payment(JoinDTO dto);
	
	/* 결제내역 테이블 insert Service */
	public void payHistoryInsert(List<JoinDTO> list, String orderId, String userId);
	
	public void paymentHistoryInsert(JoinDTO dto, String orderId, String userId);


	public List<PayDTO> selectPaymentList(String orderId);
	
	
	
	
	
	
	
	
}
