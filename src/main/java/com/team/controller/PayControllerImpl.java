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
import org.springframework.web.bind.annotation.RequestParam;
import com.team.dto.JoinDTO;
import com.team.dto.LoginDTO;
import com.team.dto.PayDTO;
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

	@RequestMapping("cardPay")
	public String cardPay(JoinDTO dto, HttpSession session, HttpServletRequest request) {
		// 카드 결제 버튼 클릭시 이쪽으로 이동
		String userId = (String) session.getAttribute("userId");
		List<JoinDTO> list = service.cartGet(userId);
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		String ymd = ym + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		String subNum = "";
		for (int i = 1; i <= 6; i++) {
			subNum += (int) (Math.random() * 10);
		}
		String orderId = ymd + "_" + subNum;
		service.cardPay(dto.getMessage(), dto, orderId);
		service.payHistoryInsert(list, orderId, userId);
		paycartDelete(userId);
		return "redirect:paySuccess?orderId="+orderId;
	}

	@RequestMapping("cardPayment")
	public String cardPayment(JoinDTO dto, HttpSession session, HttpServletRequest request) {
		String userId = (String) session.getAttribute("userId");
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		String ymd = ym + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		String subNum = "";

		for (int i = 1; i <= 6; i++) {
			subNum += (int) (Math.random() * 10);
		}
		String orderId = ymd + "_" + subNum;
		service.cardPay(dto.getMessage(), dto, orderId);
		service.paymentHistoryInsert(dto, orderId, userId);
		return "redirect:paySuccess?orderId="+orderId;
	}

	@RequestMapping("paySuccess")
	public String paySuccess(@RequestParam("orderId")String orderId,Model model) {
		//구매내역 불러오기
		List<PayDTO> list = service.selectPaymentList(orderId);
		model.addAttribute("paymentList",list);
		return "pay/paySuccess";
	}

	@RequestMapping("paycartDelete")
	public void paycartDelete(String userId) {
		service.paycartDelete(userId);
	}

	// 장바구니에서 결제하는 메소드
	@RequestMapping("payOrder")
	public String payOrder(JoinDTO dto, Model model, HttpSession session) {
		// 로그인된 ID값 받아오기
		String userId = (String) session.getAttribute("userId");
		// memberInfo에 LoginDTO형식으로 값넣어야 되서 아래와 같이 dto에 id넣고 실행
		LoginDTO memberInfo = new LoginDTO();
		memberInfo.setUserId(userId);
		// 로그인된 회원 정보 DB에서 가져와서 저장
		memberInfo = loginService.memberInfo(memberInfo);
		// 넘겨받은 product_id로 상품정보 불러와서 DTO에 저장
		ProductDTO productdto = service.payment(dto);
		// 금액합계 & 택배비 & 총금액 계산
		int totalMoney = productdto.getPrice() * dto.getAmount();
		int fee = 0;
		int totalPrice = 0;
		if (totalMoney >= 100000) {
			fee = 0;
		} else {
			fee = 2500;
		}
		totalPrice = fee + totalMoney;
		model.addAttribute("memberInfo", memberInfo);
		model.addAttribute("productInfo", productdto);
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("fee", fee);
		model.addAttribute("totalMoney", totalMoney);
		model.addAttribute("amount", dto.getAmount());
		// 결제 api를 위해서 넘기는 값
		model.addAttribute("name", memberInfo.getUserName());
		model.addAttribute("email", memberInfo.getUserEmail());
		model.addAttribute("phone", memberInfo.getUserPhone());
		model.addAttribute("postcode", memberInfo.getUserPostCode());
		model.addAttribute("addr", memberInfo.getUserAddr());
		model.addAttribute("title", productdto.getTitle());
		int boo = 1;
		model.addAttribute("boo", boo);
		return "product/cartOrder";
	}
}
