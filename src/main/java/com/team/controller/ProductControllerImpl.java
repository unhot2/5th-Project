package com.team.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.team.dto.ProductDTO;
import com.team.service.ProductService;

@Controller
public class ProductControllerImpl implements ProductController{
	@Autowired
	ProductService service;
	
	@RequestMapping("topProduct")
	public String productlist(Model model) {
		
		model.addAttribute("toplist",(ArrayList<ProductDTO>)service.productlist());
		return "product/topProduct";
	}

	@Override
	public String clothInfoInput() {
		service.clothInfoInput();
		return null;
	}

}