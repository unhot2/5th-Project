package com.team.dao;

import java.util.List;

import com.team.dto.CartDTO;

public interface CartDAO {
	/* Cart 장바구니 */
	public List<CartDTO> cart(CartDTO dto);

}
