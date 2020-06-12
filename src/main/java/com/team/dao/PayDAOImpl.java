package com.team.dao;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.dto.JoinDTO;
import com.team.dto.PayDTO;
import com.team.dto.PayHistoryDTO;
@Repository
public class PayDAOImpl implements PayDAO {
	@Autowired
	SqlSession sqlSession;

	public int cardPay(String message, String userId, String orderId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("message", message);
		map.put("userId", userId);
		map.put("orderId", orderId);
		return sqlSession.insert("sql.cardInsert",map);
				
	}
	public String depositPay(PayDTO dto) {
		return null;
	}
	
	public String payCheck(String userId) {
		return sqlSession.selectOne("sql.payCheck",userId);
	}
	
	public void payHistoryInsert(List<JoinDTO> list, String orderId, String userId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("orderId", orderId);
		map.put("userId", userId);
		sqlSession.insert("sql.insertPayHistory",map);
	}
	
}
