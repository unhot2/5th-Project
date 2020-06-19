package com.team.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import com.team.dto.JoinDTO;
import com.team.dto.PayHistoryDTO;

public interface PayController {
	/* 카드 결제를 위한 결제 DB저장 메소드 */
	public String cardPay(JoinDTO dto, HttpSession session, HttpServletRequest request);

	/* 결제 후 장바구니 비우기 */
	public void paycartDelete(String userId);

	/* 결제를 위한 페이지 이동과 정보 전달 */
	public String payOrder(JoinDTO dto, Model model, HttpSession session);

	/* 바로결제를 위한 결제 DB저장 메소드 */
	public String cardPayment(JoinDTO dto, HttpSession session, HttpServletRequest request);

	/* 구매 내역 */
	public String paymentList(PayHistoryDTO paydto, Model model);
}
