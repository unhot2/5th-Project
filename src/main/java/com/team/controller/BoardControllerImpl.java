package com.team.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.team.service.BoardService;

@Controller
public class BoardControllerImpl implements BoardController {
	
	@Autowired
	BoardService service;
	
	@Override
	public String list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String write() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String update() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String delete() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String detail() {
		// TODO Auto-generated method stub
		return null;
	}

}
