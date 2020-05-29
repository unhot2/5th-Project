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
	public List<ProductDTO> productlist(Model model) {
		return dao.productlist(model);
	}

	@Override
	public void clothInfoInput() {
		dao.clothInfoInput();
		
	}
	
}
