package com.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.dao.ProductDAO;
import com.team.dto.ProductDTO;

@Service
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
	public ProductDTO clothInfoInput(ProductDTO dto) {
		return dao.clothInfoInput(dto);
		
	}
	@Override
	public ProductDTO cart(ProductDTO dto) {
		return dao.cart(dto);
	}





	
}
