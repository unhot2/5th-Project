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
	public List<ProductDTO> topProductlist() {
		return dao.topProductlist();
	}
	@Override
	public List<ProductDTO> outerProductlist() {
		return dao.outerProductlist();
	}

	@Override
	public List<ProductDTO> pantProductlist() {
		return dao.pantProductlist();
	}

	@Override
	public List<ProductDTO> accProductlist() {
		return dao.accProductlist();
	}
	
	@Override
	public ProductDTO clothInfoInput(ProductDTO dto) {
		return dao.clothInfoInput(dto);
		
	}



	
}
