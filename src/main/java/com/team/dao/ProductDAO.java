package com.team.dao;

import java.util.List;
import com.team.dto.ProductDTO;

public interface ProductDAO {
	/* cloth 리스트 가져오기 */
	public List<ProductDTO> productlistAll();

	/* 카테고리 별 리스트 가져오기 */
	public List<ProductDTO> productList(String category);
	
	/* 서브카테고리 별 리스트 가져오기 */
	public List<ProductDTO> subProductList(String subcategory);
	
	/* cloth 정보 가져오기 */
	public ProductDTO clothInfoInput(ProductDTO dto);
	
	/*상품정보 저장*/
	public void productSave(ProductDTO dto);
	
	/*상품 검색*/
	public List<ProductDTO> productSearch(ProductDTO dto);

	



}
