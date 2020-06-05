package com.team.service;

import org.springframework.beans.factory.annotation.Autowired;


import com.team.dao.PayDAO;

public class PayServiceImpl implements PayService {
	@Autowired
	PayDAO dao;
	
	public String buyCard() {
		return dao.buyCard();
		
	}
}
