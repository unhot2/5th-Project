package com.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.team.dto.CartDTO;

@Controller
public class CartDAOImpl implements CartDAO{
	@Autowired
	SqlSession sqlSession;

	public int insertCart(CartDTO dto) {
		return sqlSession.insert("sql.insertCart",dto);
	}

	@Override
	public List<CartDTO> cartList(String userId) {
		return sqlSession.selectList("sql.cartList",userId);
	}
	
	
	
	
	
	
}
