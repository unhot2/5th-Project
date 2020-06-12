package com.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.dao.PayDAO;
import com.team.dto.JoinDTO;
import com.team.dto.PayDTO;

@Service
public class PayServiceImpl implements PayService {
	@Autowired
	PayDAO dao;
	
	public int cardPay(String message, String userId, String orderId) {
		return dao.cardPay(message,userId,orderId);
	}
	public String depositPay(PayDTO dto) {
		dao.depositPay(dto);
		return null;
	}
	public boolean payCheck(String userId) {
		boolean chk = false;
		if (userId.equals(dao.payCheck(userId))) {
			chk = true;
		}
		return chk;  
	}
	public void payHistoryInsert(List<JoinDTO> list , String orderId, String userId) {
		for (JoinDTO joinDTO : list) {
			dao.payHistoryInsert(list,orderId,userId);
		}
		
		
		
		
	}
	
}
