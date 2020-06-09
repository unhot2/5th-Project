package com.team.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
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
	public String productSave(MultipartHttpServletRequest request);
	
	/*상품 검색 기능*/
	public String productSearch(ProductDTO dto, Model model);
}
