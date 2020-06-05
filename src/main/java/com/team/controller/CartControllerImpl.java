package com.team.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.team.dto.JoinDTO;
import com.team.dto.CartDTO;
import com.team.service.CartService;

@Controller
public class CartControllerImpl implements CartController {
	@Autowired
	CartService service;

	@RequestMapping("insertCart")
	public String insertCart(Model model, CartDTO dto, HttpSession session) {
		String userId = (String) session.getAttribute("userId");
		dto.setUserId((String) session.getAttribute("userId"));
		int count = service.countCart(dto.getProduct_id(), userId);
		System.out.println("dto.getProduct_id() : "+dto.getProduct_id());
		System.out.println("count :"+count);
		if(count ==0) {
			service.insertCart(dto);
		}else {
			service.updateCart(dto);
		}
		 return "product/productInformation"; 
	}

	@RequestMapping("cartList")
	public String cartList(Model model, HttpSession session) {
		String userId = (String) session.getAttribute("userId");
		List<JoinDTO> list = service.cartList(userId);
		model.addAttribute("cartList", list);
		int totalPrice = 0;
		int money = 0;
		int fee = 0;
		int tatalMoney = 0;
		for (JoinDTO dto : list) {
			money = dto.getAmount() * dto.getPrice();
			totalPrice += money;
		}
		if (totalPrice >= 100000) {
			fee = 0;
		} else {
			fee = 2500;
		}
		tatalMoney = fee + totalPrice;
		model.addAttribute("cartList", list);
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("fee", fee);
		model.addAttribute("totalMoney", tatalMoney);
		return "product/cartList";
	}

	@RequestMapping("cartDelete")
	public String cartDelete(CartDTO dto) {
		service.cartDelete(dto);
		return "redirect:cartList";
	}

	@RequestMapping("cartDeleteAll")
	public String cartDeleteAll(CartDTO dto) {
		service.cartDeleteAll(dto);
		return "redirect:cartList";
	}

	@RequestMapping("cntUp")
	public String cntUp(CartDTO dto) {
		service.cntUp(dto);
		return "redirect:cartList";
	}

	@RequestMapping("cntDown")
	public String cntDown(CartDTO dto) {
		service.cntDown(dto);
		return "redirect:cartList";
	}
	@RequestMapping("cartOrder")
	public String cartOrder(Model model, CartDTO dto) {
		ArrayList<CartDTO> list = (ArrayList<CartDTO>) service.cartOrder(dto);
		
		model.addAttribute("cartList", list);
		return "product/cartOrder";
	}
}
