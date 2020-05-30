package com.team.controller;

import org.springframework.ui.Model;

public interface ProductController {
	/* product 리스트 가져오기 */
	public String productlistAll(Model model);
	public String topProductlist(Model model);
	public String outerProductlist(Model model);
	public String pantProductlist(Model model);
	public String accProductlist(Model model);
	
	/* product 정보 가져오기 */
	public String clothInfoInput();
	
}
