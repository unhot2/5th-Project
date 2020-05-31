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
	public List<ProductDTO> productlistAll() {
		return sqlSession.selectList("sql.productListAll");
	}
	
	@Override
	public List<ProductDTO> topProductlist() {
		return sqlSession.selectList("sql.producTopList");
	}
	@Override
	public List<ProductDTO> outerProductlist() {
		return sqlSession.selectList("sql.productOuterList");
	}

	@Override
	public List<ProductDTO> pantProductlist() {
		return sqlSession.selectList("sql.productPantList");
	}

	@Override
	public List<ProductDTO> accProductlist() {
		return sqlSession.selectList("sql.productAccList");
	}
	@Override
	public ProductDTO clothInfoInput(ProductDTO dto) {
		return sqlSession.selectOne("sql.productInformation", dto);
	}
}
