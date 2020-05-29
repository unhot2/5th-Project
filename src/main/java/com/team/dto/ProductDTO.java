package com.team.dto;

public class ProductDTO {
	private String title;
	private String category;
	private int price;
	private String subcategory;
	private String imgpath;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCategory() {
		return category;
	}
	public String getImppath() {
		return imgpath;
	}
	public void setImppath(String imgpath) {
		this.imgpath = imgpath;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getSubcategory() {
		return subcategory;
	}
	public void setSubcategory(String subcategory) {
		this.subcategory = subcategory;
	}

	
}
