package com.team.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.team.dao.ProductDAO;
import com.team.dto.ProductDTO;

@Service("ProductService")
public class ProductServiceImpl implements ProductService{
	@Autowired
	ProductDAO dao;
	
	@Override
	public List<ProductDTO> productlistAll() {
		return dao.productlistAll();
	}
	
	@Override
	public List<ProductDTO> topProductlist(String category) {
		return dao.productList(category);
	}
	
	@Override
	public List<ProductDTO> subProductlist(String subcategory) {
		return dao.subProductList(subcategory);
	}
	
	@Override
	public ProductDTO clothInfoInput(ProductDTO dto) {
		return dao.clothInfoInput(dto);
		
	}

	@Override
	public void productSave(ProductDTO dto) {
		dao.productSave(dto);
	}

	@Override
	public List<ProductDTO> productSearch(ProductDTO dto) {
		return dao.productSearch(dto);
	}


}
