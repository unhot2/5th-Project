package com.team.service;
import com.team.dto.PayDTO;

public interface PayService {
	/* 카드 결제 서비스 */
	public int cardPay(String message, String userId);
	/* 무통장 입금 결제 서비스 */
	public String depositPay(PayDTO dto) ;
	/* 결제 완료 되어있으면 메세지 띄울 서비스 */
	public boolean payCheck(String userId);
	
	
	
	
	
	
}
