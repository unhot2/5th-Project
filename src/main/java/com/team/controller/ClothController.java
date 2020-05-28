package com.team.controller;

import org.springframework.ui.Model;

import com.team.dto.ClothDTO;

public interface ClothController {
	/* cloth 리스트 가져오기 */
	public String clothlist(Model model);
	
	/* cloth 정보 가져오기 */
	public String clothInfoInput();
	
}
