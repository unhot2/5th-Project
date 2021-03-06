package com.team.dto;


public class ProductDTO {
	private String product_id;
	private String title;
	private int price;
	private String category;
	private String subcategory;
	private String imgpath;
	private String detailImgpath;
	private int productLike;
	
	public int getProductLike() {
		return productLike;
	}
	public void setProductLike(int productLike) {
		this.productLike = productLike;
	}
	public String getDetailImgpath() {
		return detailImgpath;
	}
	public void setDetailImgpath(String detailImgpath) {
		this.detailImgpath = detailImgpath;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSubcategory() {
		return subcategory;
	}
	public void setSubcategory(String subcategory) {
		this.subcategory = subcategory;
	}
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	
}
