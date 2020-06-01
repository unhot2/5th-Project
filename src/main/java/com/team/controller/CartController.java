package com.team.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.team.dto.CartDTO;

public interface CartController {
	/* Cart 장바구니 */
	public String cart(Model model,CartDTO dto, HttpServletRequest request);
	
	
}
