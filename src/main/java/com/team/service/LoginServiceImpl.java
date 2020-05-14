package com.team.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.team.dao.LoginDAO;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired
	LoginDAO dao;

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
