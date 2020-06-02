package com.team.service;

import java.util.List;

import com.team.dto.CartDTO;

public interface CartService {
	/* Cart 장바구니 */
	public int insertCart(CartDTO dto);

	public List<CartDTO> cartList(String userId);

}
