package com.team.controller;

import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.team.dto.CartDTO;
import com.team.dto.QnaDTO;
import com.team.service.CartService;

@Controller
public class CartControllerImpl implements CartController {
	@Autowired
	CartService service;

	@RequestMapping("insertCart")
	public String insertCart(Model model, CartDTO dto, HttpSession session) {
		String userId = (String) session.getAttribute("userId");
		dto.setUserId((String) session.getAttribute("userId"));
		System.out.println("id값 :"+dto.getUserId());
		System.out.println("title값 :"+dto.getTitle());
		System.out.println("product_id값 :"+dto.getProduct_id());
		System.out.println("price값 :"+dto.getPrice());
		service.insertCart(dto);
		model.addAttribute("product_id", dto.getProduct_id());
		return "redirect:productInformation";
	}

	@RequestMapping("cartList")
	public String cartList(Model model,HttpSession session) {
		String userId = (String) session.getAttribute("userId");
		ArrayList<CartDTO> list = (ArrayList<CartDTO>) service.cartList(userId);
		int totalPrice = 0;
		int money = 0;
		int fee = 0;
		int tatalMoney = 0;
		for (CartDTO dto : list) {
			money = dto.getAmount() * dto.getPrice();
			totalPrice += money;
		}
		if (totalPrice >= 100000) {
			fee = 0;
		}
		else {
			fee = 2500;
		}
		tatalMoney = fee+totalPrice;
		model.addAttribute("cartList", list);
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("fee", fee);
		model.addAttribute("totalMoney", tatalMoney);
		return "product/cartList";
	}

	@RequestMapping("delete")
	public String delete(CartDTO dto) {
		service.delete(dto);
		return "redirect:cartList";
	}

	@RequestMapping("deleteAll")
	public String deleteAll(CartDTO dto) {
		service.deleteAll(dto);
		return "redirect:cartList";
	}
	
}
