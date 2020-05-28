package com.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.dao.ClothDAO;
import com.team.dto.ClothDTO;

@Service
public class ClothServiceImpl implements ClothService{
	@Autowired
	ClothDAO dao;
	
	@Override
	public List<ClothDTO> clothlist(Model model) {
		return dao.clothlist(model);
	}

	@Override
	public void clothInfoInput() {
		dao.clothInfoInput();
		
	}
	
}
