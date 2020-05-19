package com.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.dto.LoginDTO;

@Repository
public class LoginDAOImpl implements LoginDAO {
	@Autowired
	SqlSession sqlSession;

	public List<LoginDTO> loginChk(LoginDTO dto) {
		List<LoginDTO> list = sqlSession.selectList("sql.listAll",dto);
		return list;
	}

	public int saveMember(LoginDTO dto) {
		return sqlSession.insert("sql.saveMember",dto);
	}

	public void delMember() {
		// TODO Auto-generated method stub
		
	}

	public void updateMember() {
		// TODO Auto-generated method stub
		
	}
}
