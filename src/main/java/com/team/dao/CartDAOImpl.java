package com.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.team.dto.JoinDTO;
import com.team.dto.CartDTO;

@Controller
public class CartDAOImpl implements CartDAO{
	@Autowired
	SqlSession sqlSession;

	public int insertCart(CartDTO dto) {
		return sqlSession.insert("sql.insertCart",dto);
	}

	@Override
	public List<JoinDTO> cartList(String userId) {
		List<JoinDTO> list = sqlSession.selectList("sql.cartList",userId);
		System.out.println("dao list size: "+list.size());
		return list;
	}

	@Override
	public void cartDelete(CartDTO dto) {
		sqlSession.delete("sql.cartDelete",dto);
		
	}

	@Override
	public void cartDeleteAll(CartDTO dto) {
		sqlSession.delete("sql.cartDeleteAll",dto);
		
	}

	@Override
	public void cntUp(CartDTO dto) {
		sqlSession.update("sql.cntUp",dto);
	}

	@Override
	public void cntDown(CartDTO dto) {
		sqlSession.update("sql.cntDown",dto);
	}

	@Override
	public List<CartDTO> cartOrder(CartDTO dto) {
		return sqlSession.selectList("sql.cartOrderListAll", dto);
	}

	@Override
	public int countCart(int product_id, String userId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("product_id",product_id);
		map.put("userId",userId);
		System.out.println("map : "+map);
		return sqlSession.selectOne("sql.countCart", map);
	}

	@Override
	public void updatCart(CartDTO dto) {
		sqlSession.update("sql.updateCart", dto);
		
	}
	
	
	
}