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
	public List<ProductDTO> productlistAll() {
		return sqlSession.selectList("sql.productListAll");
	}
	
	@Override
	public List<ProductDTO> productList(String category) {
		return sqlSession.selectList("sql.productList",category);
	}
	
	@Override
	public ProductDTO clothInfoInput(ProductDTO dto) {
		return sqlSession.selectOne("sql.productInformation", dto);
	}
	
}
