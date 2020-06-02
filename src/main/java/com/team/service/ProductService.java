package com.team.service;

import java.util.List;

import org.springframework.ui.Model;

import com.team.dto.ProductDTO;

public interface ProductService {
	/* cloth 리스트 가져오기 */
	public List<ProductDTO> productlistAll();
	public List<ProductDTO> topProductlist();
	public List<ProductDTO> outerProductlist();
	public List<ProductDTO> pantProductlist();
	public List<ProductDTO> accProductlist();
	
	/* cloth 정보 가져오기 */
	public ProductDTO clothInfoInput(ProductDTO dto);
	/* product 장바구니 */
	public ProductDTO cart(ProductDTO dto);
	

	

}
