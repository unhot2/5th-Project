package com.team.controller;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.team.dto.JoinDTO;
import com.team.dto.LoginDTO;
import com.team.dto.ProductDTO;
import com.team.service.CartService;
import com.team.service.LoginService;
import com.team.service.PayService;

@Controller
public class PayControllerImpl implements PayController {
	@Autowired
	PayService service;
	
	@Autowired
	CartService service2;
	
	@Autowired
	LoginService loginService;
	
	@ResponseBody
	@RequestMapping("cardPay")
	public void cardPay(JoinDTO dto, HttpSession session, HttpServletRequest request) {
		//카드 결제 버튼 클릭시 이쪽으로 이동
				
		String userId = (String) session.getAttribute("userId");
		List<JoinDTO> list = cartGet(userId);
		Calendar cal = Calendar.getInstance();
		 int year = cal.get(Calendar.YEAR);
		 String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		 String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
		 String subNum = "";
		 
		 for(int i = 1; i <= 6; i ++) {
		  subNum += (int)(Math.random() * 10);
		 }
		 
		 String orderId = ymd + "_" + subNum;
		
		
		service.cardPay(dto.getMessage(),dto,orderId);
		service.payHistoryInsert(list,orderId,userId);
		
		paycartDelete(userId);
		
	}
	
	public void cardPayment(JoinDTO dto, HttpSession session, HttpServletRequest request) {
		String userId = (String) session.getAttribute("userId");
		Calendar cal = Calendar.getInstance();
		 int year = cal.get(Calendar.YEAR);
		 String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		 String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
		 String subNum = "";
		 
		 for(int i = 1; i <= 6; i ++) {
		  subNum += (int)(Math.random() * 10);
		 }
		 
		 String orderId = ymd + "_" + subNum;
		 
		 service.cardPay(dto.getMessage(),dto,orderId);
		 service.paymentHistoryInsert(dto,orderId,userId);
	}

	public List<JoinDTO> cartGet(String userId) {
		List<JoinDTO> list = service.cartGet(userId);
		return list;
	}
	@RequestMapping("paycartDelete")
	public void paycartDelete(String userId) {
		service.paycartDelete(userId);
	}
	
	@RequestMapping("payment")
	public void payment(ProductDTO dto,Model model) {
		ProductDTO productdto = service.payment(dto);
		model.addAttribute("productInfo",productdto);
		
	}
	
	@RequestMapping("payOrder")
	public String payOrder(ProductDTO dto, Model model, HttpSession session) {
		String userId = (String) session.getAttribute("userId");
		System.out.println("payOrder 도착");
		int totalPrice = dto.getPrice();
		int fee = 0;
		int totalMoney = 0;
		if (totalPrice >= 100000) {
			fee = 0;
		}else {
			fee = 2500;
		}
		totalMoney = fee + totalPrice;
		
		LoginDTO logindto = new LoginDTO();
		logindto.setUserId(userId);
		LoginDTO memberInfo = loginService.memberInfo(logindto);
		
		System.out.println(totalMoney);
		System.out.println(dto.getImgpath());
		System.out.println(dto.getTitle());
		
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("fee", fee);
		model.addAttribute("totalMoney", totalMoney);
		model.addAttribute("productInfo",dto);
		model.addAttribute("memberInfo",memberInfo);
		model.addAttribute("name",memberInfo.getUserName());
		model.addAttribute("email",memberInfo.getUserEmail());
		model.addAttribute("phone",memberInfo.getUserPhone());
		model.addAttribute("postcode",memberInfo.getUserPostCode());
		model.addAttribute("addr",memberInfo.getUserAddr());
		model.addAttribute("title",dto.getTitle());
		
		int boo= 1;
		model.addAttribute("boo", boo);
		return "product/cartOrder";
	}

	
	
	
	
	
	
}
