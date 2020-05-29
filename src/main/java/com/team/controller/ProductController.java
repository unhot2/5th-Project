package com.team.controller;

import org.springframework.ui.Model;

import com.team.dto.ProductDTO;

public interface ProductController {
	/* cloth 리스트 가져오기 */
	public String productlist(Model model);
	
	/* cloth 정보 가져오기 */
	public String clothInfoInput();
	
}
