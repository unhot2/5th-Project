package com.team.service;

import java.util.List;
import com.team.dto.ProductDTO;

public interface ProductService {
	/* cloth 리스트 가져오기 */
	public List<ProductDTO> productlistAll();
	public List<ProductDTO> topProductlist();
	public List<ProductDTO> outerProductlist();
	public List<ProductDTO> pantProductlist();
	public List<ProductDTO> accProductlist();
	
	/* cloth 정보 가져오기 */
	public void clothInfoInput();

	

	

}
