package com.team.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAOImpl implements LoginDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public boolean loginChk() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void saveMember() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delMember() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateMember() {
		// TODO Auto-generated method stub
		
	}
}
