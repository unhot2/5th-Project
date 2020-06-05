package com.team.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.team.dto.ProductDTO;
import com.team.service.ProductService;

@Controller
public class ProductControllerImpl implements ProductController{
	@Autowired
	ProductService service;
	
	@RequestMapping("productAll")
	public String productlistAll(Model model) {
		model.addAttribute("list",(ArrayList<ProductDTO>)service.productlistAll());
		return "product/productAll";
	}

	/* 구분 */
	@RequestMapping("productList")
	public String productList(@RequestParam("category") String category, Model model) {
		System.out.println(category);
		model.addAttribute("productList",(ArrayList<ProductDTO>)service.topProductlist(category));
		return "product/productList";
	}
	@RequestMapping("productInformation")
	public String clothInfoInput(Model model,ProductDTO dto) {
		ProductDTO productdto = service.clothInfoInput(dto);
		model.addAttribute("productInfo",productdto);	
		return "product/productInformation";
	}



}