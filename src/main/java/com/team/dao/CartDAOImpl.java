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

	public List<CartDTO> cart(CartDTO dto) {
		
		return sqlSession.selectList("sql.cartList", dto);
	}
	
	
	
	
	
	
}
