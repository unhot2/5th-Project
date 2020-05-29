package com.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.team.dto.ProductDTO;

@Controller
public class ProductDAOImpl implements ProductDAO{
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<ProductDTO> productlist(Model model) {
		return sqlSession.selectList("sql.productListAll");
	}

	@Override
	public void clothInfoInput() {
		
	}
	
	
	
	
	
}
