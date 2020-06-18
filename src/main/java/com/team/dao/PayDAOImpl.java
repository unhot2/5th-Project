package com.team.dao;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.team.dto.JoinDTO;
import com.team.dto.PayDTO;
import com.team.dto.ProductDTO;
@Repository
public class PayDAOImpl implements PayDAO {
	@Autowired
	SqlSession sqlSession;

	public int cardPay(String message, JoinDTO dto, String orderId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("message", message);
		map.put("userId", dto.getUserId());
		map.put("addr", dto.getAddr());
		map.put("name", dto.getName());
		map.put("phone", dto.getPhone());
		map.put("postCode", dto.getPostCode());
		map.put("totalPrice", dto.getTotalPrice());
		map.put("orderId", orderId);
		return sqlSession.insert("sql.cardInsert",map);
	}
	
	public void payHistoryInsert(JoinDTO dto, String orderId, String userId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("amount", dto.getAmount());
		map.put("imgpath", dto.getImgpath());
		map.put("price", dto.getPrice());
		map.put("title", dto.getTitle());
		map.put("orderId", orderId);
		map.put("userId", userId);
		sqlSession.insert("sql.insertPayHistory",map);
	}
	
	public List<JoinDTO> cartGet(String userId){
		List<JoinDTO> list = sqlSession.selectList("sql.cartList",userId);
		return list;
	}
	
	public void paycartDelete(String userId) {
		System.out.println("결제 후 카트 삭제");
		sqlSession.delete("sql.cartDeleteAll",userId);
	}
	
	public ProductDTO payment(JoinDTO dto) {
		return sqlSession.selectOne("sql.productInformation", dto);
	}

	public List<PayDTO> selectPaymentList(String orderId) {
		return sqlSession.selectList("sql.selectPaymentList",orderId);
	}
	
	
	
}
