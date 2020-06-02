package com.team.dao;

import java.util.List;
import com.team.dto.ProductDTO;

public interface ProductDAO {
	/* cloth 리스트 가져오기 */
	public List<ProductDTO> productlistAll();

	/* 카테고리 별 리스트 가져오기 */
	public List<ProductDTO> productList(String category);
	
	/* cloth 정보 가져오기 */
	public ProductDTO clothInfoInput(ProductDTO dto);
	/* product 장바구니 */
	public ProductDTO cart(ProductDTO dto);
}
