package com.team.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.team.dto.JoinDTO;
import com.team.dto.LoginDTO;
import com.team.dto.CartDTO;
import com.team.service.CartService;
import com.team.service.LoginService;

@Controller
public class CartControllerImpl implements CartController {
	@Autowired
	CartService service;
	@Autowired
	LoginService loginService;

	@RequestMapping("insertCart")//장바구니에 상품을 넣는다.
	public String insertCart(Model model, CartDTO dto, HttpSession session) {
	
		String userId = (String) session.getAttribute("userId");
		dto.setUserId((String) session.getAttribute("userId"));
		int count = service.countCart(dto.getProduct_id(), userId);
		if(count ==0) {
			service.insertCart(dto);
		}else {
			service.updateCart(dto);
		}
		 return "product/productInformation"; 
	}

	@RequestMapping("cartList")//카트에 담긴 상품 리스트를 보여준다.
	public String cartList(Model model, HttpSession session) {
		String userId = (String) session.getAttribute("userId");
		List<JoinDTO> list = service.cartList(userId);
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
	
	

	@RequestMapping("cartDelete")//카트에 담긴 상품을 제거한다.
	public String cartDelete(CartDTO dto) {
		service.cartDelete(dto);
		return "redirect:cartList";
	}

	@RequestMapping("cartDeleteAll")//장바구니 모든 상품목록을 제거 한다.
	public String cartDeleteAll(CartDTO dto) {
		service.cartDeleteAll(dto);
		return "redirect:cartList";
	}

	@RequestMapping("cntUp")//상품개수 증가시키기
	public String cntUp(CartDTO dto) {
		service.cntUp(dto);
		return "redirect:cartList";
	}

	@RequestMapping("cntDown")//상품개수 줄이기
	public String cntDown(CartDTO dto) {
		service.cntDown(dto);
		return "redirect:cartList";
	}
	@RequestMapping("cartOrder")//장바구니 상품 주문하기
	public String cartOrder(Model model, HttpSession session) {
		String userId = (String) session.getAttribute("userId");
		List<JoinDTO> list = service.cartList(userId);
		int totalPrice = 0;
		int money = 0;
		int fee = 0;
		int tatalMoney = 0;
		for (JoinDTO cart : list) {
			money = cart.getAmount() * cart.getPrice();
			totalPrice += money;
		}
		if (totalPrice >= 100000) {
			fee = 0;
		} else {
			fee = 2500;
		}
		tatalMoney = fee + totalPrice;
		LoginDTO logindto = new LoginDTO();
		logindto.setUserId(userId);
		LoginDTO memberInfo = loginService.memberInfo(logindto);
		model.addAttribute("cartList", list);
		model.addAttribute("userID", userId);
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("fee", fee);
		model.addAttribute("totalMoney", tatalMoney);
		model.addAttribute("memberInfo",memberInfo);
		model.addAttribute("name",memberInfo.getUserName());
		model.addAttribute("email",memberInfo.getUserEmail());
		model.addAttribute("phone",memberInfo.getUserPhone());
		model.addAttribute("postcode",memberInfo.getUserPostCode());
		model.addAttribute("addr",memberInfo.getUserAddr());
		for (JoinDTO cart : list) {
			model.addAttribute("title",cart.getTitle());
		}
		int boo= 0;
		model.addAttribute("boo", boo);
		return "product/cartOrder";
	}
}
