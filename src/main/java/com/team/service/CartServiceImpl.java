package com.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.dao.CartDAO;
import com.team.dto.CartDTO;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
	CartDAO dao;

	@Override
	public List<CartDTO> cart(CartDTO dto) {
		return dao.cart(dto);
	}
	
}
