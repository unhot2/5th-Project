package com.team.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.dto.ClothDTO;
import com.team.service.ClothService;

@Controller
public class ClothControllerImpl implements ClothController{
	@Autowired
	ClothService service;
	
	@RequestMapping("topCloth")
	public String clothlist(Model model) {
		List<ClothDTO> list = service.clothlist(model);
	
		model.addAttribute("clothlist", list);
		return "cloth/topCloth";
	}

	@Override
	public String clothInfoInput() {
		service.clothInfoInput();
		return null;
	}

}