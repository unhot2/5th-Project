package com.team.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.team.dto.ProductDTO;


public interface ProductController {
	/* product 리스트 가져오기 */
	public String productlistAll(Model model);

	/* 카테고리 별 리스트 가져오기 */
	public String productList(@RequestParam("category") String category, Model model);
	
	/* product 정보 가져오기 */
	public String clothInfoInput(Model model,ProductDTO dto);
	
	/*상품등록창*/
	public String productRegister();

	/*상품등록 기능*/
	public String productSave(MultipartHttpServletRequest request, MultipartFile uploadFile);
	
	
}
