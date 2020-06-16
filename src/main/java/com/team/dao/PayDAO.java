package com.team.dao;

import java.util.List;
import com.team.dto.JoinDTO;
import com.team.dto.ProductDTO;

public interface PayDAO {
	/* 카드 결제 DAO */
	public int cardPay(String message, JoinDTO dto, String orderId);
	
	/* 결제내역 테이블 insert DAO*/
	public void payHistoryInsert(JoinDTO joinDTO, String orderId, String userId);
	
	/* 카드 결제를 위한 카트 정보 가져오기 DAO */
	public List<JoinDTO> cartGet(String userId);
	
	/* 결제 후 장바구니 비우기 DAO */
	public void paycartDelete(String userId);
	
	/* 바로결제를 위한 해당 Product 정보 가져오기  DAO*/
	public ProductDTO payment(ProductDTO dto);
	
	
	
	
}
