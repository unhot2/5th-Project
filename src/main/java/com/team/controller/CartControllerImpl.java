package com.team.controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.team.dto.CartDTO;
import com.team.service.CartService;

@Controller
public class CartControllerImpl implements CartController{
	@Autowired
	CartService service;
	
	@RequestMapping("cart")
	public String cart(Model model,CartDTO dto, HttpServletRequest request) {
	    String i= request.getParameter("amount");
	    System.out.println(i);
	    ArrayList<CartDTO> cartdto = (ArrayList<CartDTO>) service.cart(dto);
		System.out.println(dto);
		model.addAttribute("cart",cartdto );
		model.addAttribute("cart1", i );
		return "cart/cart";
	}

}
