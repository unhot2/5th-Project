package com.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.dao.PayDAO;
import com.team.dto.JoinDTO;
import com.team.dto.PayDTO;
import com.team.dto.ProductDTO;

@Service
public class PayServiceImpl implements PayService {
	@Autowired
	PayDAO dao;
	
	public void cardPay(String message, JoinDTO dto, String orderId) {
		
			dao.cardPay(message,dto,orderId);
		
	}
	
	public void payHistoryInsert(List<JoinDTO> list , String orderId, String userId) {
		for (JoinDTO joinDTO : list ) {
			dao.payHistoryInsert(joinDTO,orderId,userId);
		}
	}
		
	public List<JoinDTO> cartGet(String userId) {
		
		 return dao.cartGet(userId);
	}
	
	public void paycartDelete(String userId) {
		dao.paycartDelete(userId);
		
	}
	
	public ProductDTO payment(JoinDTO dto) {
		return dao.payment(dto);
	}

	
	public void paymentHistoryInsert(JoinDTO dto, String orderId, String userId) {
		dao.payHistoryInsert(dto,orderId,userId);
		
	}

	public List<PayDTO> selectPaymentList(String orderId) {
		return dao.selectPaymentList(orderId);
	}
	
}
