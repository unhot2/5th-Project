package com.team.service;

import java.util.List;

import org.springframework.ui.Model;

import com.team.dto.ProductDTO;

public interface ProductService {
	/* cloth 리스트 가져오기 */
	public List<ProductDTO> productlist(Model model);

	/* cloth 정보 가져오기 */
	public void clothInfoInput();

	

}
