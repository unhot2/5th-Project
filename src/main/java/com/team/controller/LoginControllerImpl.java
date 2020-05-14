package com.team.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.team.service.LoginService;

@Controller
public class LoginControllerImpl implements LoginController {
	
	@Autowired
	LoginService service;
	
	
	@Override
	public String home() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String login() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String logout() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String membership() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String loginChk() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String saveMember() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String delMember() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String updateMember() {
		// TODO Auto-generated method stub
		return null;
	}

}
