package com.team.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.team.dto.JoinDTO;
import com.team.dto.ProductDTO;

public interface PayController {
	/* 카드 결제를 위한 결제 DB저장 메소드*/
	public void cardPay(JoinDTO dto, HttpSession session, HttpServletRequest request);
	
	/* 카드 결제를 위한 카트 정보 가져오기 */
	public List<JoinDTO> cartGet(String userId);
	
	/* 결제 후 장바구니 비우기 */
	public void paycartDelete(String userId);
	
	/* 바로결제를 위한 해당 Product 정보 가져오기 */
	public void payment(ProductDTO dto,Model model);
	
	/* 결제를 위한 페이지 이동과 정보 전달 */
	public String payOrder(ProductDTO dto, Model model, HttpSession session);
	
	/* 바로결제를 위한 결제 DB저장 메소드 */
	public void cardPayment(JoinDTO dto, HttpSession session, HttpServletRequest request);
}
