package com.team.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import com.team.dto.ProductDTO;
import com.team.service.ProductService;
import com.team.util.UtilFile;
import com.team.util.UtilThFile;

@Controller
public class ProductControllerImpl implements ProductController{
	@Autowired
	ProductService service;
	
	@Autowired
	UtilFile utilFile;
	
	@Autowired
	UtilThFile utilthFile;
	
	@RequestMapping("productAll")
	public String productlistAll(Model model) {
		model.addAttribute("list",(ArrayList<ProductDTO>)service.productlistAll());
		return "product/productAll";
	}

	/* 구분 */
	@RequestMapping("productList")
	public String productList(@RequestParam("category") String category, Model model) {
		model.addAttribute("productList",(ArrayList<ProductDTO>)service.topProductlist(category));
		return "product/productList";
	}
	
	@RequestMapping("subProductlist")
	public String subProductlist(@RequestParam("subcategory") String subcategory, Model model) {
		model.addAttribute("productsubList",(ArrayList<ProductDTO>)service.subProductlist(subcategory));
		return "product/productList";
	}
	
	@RequestMapping("productInformation")
	public String clothInfoInput(Model model,ProductDTO dto) {
		ProductDTO productdto = service.clothInfoInput(dto);
		model.addAttribute("productInfo",productdto);	
		return "product/productInformation";
	}
	
	@RequestMapping("productRegister")
	@Override
	public String productRegister() {

		return "product/productRegister";
	}

	@RequestMapping("productSave")
	public String productSave(MultipartHttpServletRequest request) {
		ProductDTO dto = new ProductDTO();
		dto.setProduct_id(request.getParameter("product_id"));
		dto.setTitle(request.getParameter("title"));
		dto.setPrice(Integer.parseInt(request.getParameter("price")));
		dto.setCategory(request.getParameter("category"));
		dto.setSubcategory(request.getParameter("subcategory"));
		dto.setImgpath(utilthFile.thfileUpload(request));
		dto.setDetailImgpath(utilFile.fileUpload(request));
		service.productSave(dto);
		return "redirect:productAll";
	}

	@RequestMapping("productSearch")
	public String productSearch(ProductDTO dto, Model model) {
		ArrayList<ProductDTO> list = (ArrayList<ProductDTO>)service.productSearch(dto);
		model.addAttribute("list",list);
		model.addAttribute("searchValue",dto.getTitle());
		return "product/productResult";
	}
	@RequestMapping("productlike")
	public String producrlike(HttpServletRequest httpRequest,HttpSession session) {
	      String product_id = httpRequest.getParameter("product_id");
	      System.out.println("1");
	      int like = Integer.parseInt(httpRequest.getParameter("like"));
	      ProductDTO dto = new ProductDTO();
	      dto.setProduct_id(product_id);
	      System.out.println(like);
	      return null;
	}
}