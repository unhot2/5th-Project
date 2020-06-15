package com.team.service;
import java.util.List;

import com.team.dto.JoinDTO;
import com.team.dto.PayDTO;
import com.team.dto.PayDetailDTO;
import com.team.dto.PayHistoryDTO;

public interface PayService {
	/* 카드 결제 서비스 */
	public void cardPay(String message, List<JoinDTO> list, String orderId);
	/* 무통장 입금 결제 서비스 */
	public String depositPay(PayDTO dto) ;
	/* 결제 완료 되어있으면 메세지 띄울 서비스 */
	public boolean payCheck(String userId);
	/* 결제내역 테이블 insert */
	public void payHistoryInsert(List<JoinDTO> list, String orderId, String userId);
	public List<JoinDTO> cartGet(String userId);
	public void paycartDelete(String userId);
	
	
	
	
	
	
	
	
}
