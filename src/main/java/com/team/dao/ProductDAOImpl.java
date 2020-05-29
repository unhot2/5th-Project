package com.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.team.dto.ProductDTO;

@Controller
public class ProductDAOImpl implements ProductDAO{
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<ProductDTO> productlist() {
		
		List<ProductDTO> list = sqlSession.selectList("sql.productListAll");
		System.out.println(list);
		return list;
		
	}

	@Override
	public void clothInfoInput() {
		
	}
	
	
	
	
	
}
