package com.team.controller;

import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;

import com.team.dto.CartDTO;

public interface CartController {
	/* 장바구니 저장 */
	public String insertCart(Model model, CartDTO dto, HttpSession session);
	/* 장바구니 목록 가져오기 */
	public String cartList(Model model, HttpSession session);
	/* 장바구니 개별삭제 */
	public String cartDelete(CartDTO dto);
	/* 장바구니 전체 삭제 */
	public String cartDeleteAll(CartDTO dto);
	
}
