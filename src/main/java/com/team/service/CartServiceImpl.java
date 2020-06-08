package com.team.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.dao.CartDAO;
import com.team.dto.JoinDTO;
import com.team.dto.CartDTO;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
	CartDAO dao;

	@Override
	public int insertCart(CartDTO dto) {
		return dao.insertCart(dto);
	}

	@Override
	public List<JoinDTO> cartList(String userId) {
		return dao.cartList(userId);
	}

	@Override
	public void cartDelete(CartDTO dto) {
		dao.cartDelete(dto);
		
	}

	@Override
	public void cartDeleteAll(CartDTO dto) {
		dao.cartDeleteAll(dto);		
	}
	
	public void cntUp(CartDTO dto) {
		dao.cntUp(dto);
	}

	@Override
	public void cntDown(CartDTO dto) {
		dao.cntDown(dto);
	}

	@Override
	public List<CartDTO> cartOrder(CartDTO dto) {
		return dao.cartOrder(dto);
	}

	@Override
	public int countCart(int product_id, String userId) {
		return dao.countCart(product_id, userId);
	}

	@Override
	public void updateCart(CartDTO dto) {
		dao.updatCart(dto);
	}
}
