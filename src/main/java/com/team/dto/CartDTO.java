package com.team.dto;

public class CartDTO {
	    private String userId;		
	    private String userName;		
	    private int product_id;
	    private String title;
	    private int price;
	    private int money;
	    private int amount;
	    
		/**
		 * @return the product_id
		 */
		public int getProduct_id() {
			return product_id;
		}
		/**
		 * @param product_id the product_id to set
		 */
		public void setProduct_id(int product_id) {
			this.product_id = product_id;
		}
		/**
		 * @return the userId
		 */
		public String getUserId() {
			return userId;
		}
		/**
		 * @param userId the userId to set
		 */
		public void setUserId(String userId) {
			this.userId = userId;
		}
		/**
		 * @return the userName
		 */
		public String getUserName() {
			return userName;
		}
		/**
		 * @param userName the userName to set
		 */
		public void setUserName(String userName) {
			this.userName = userName;
		}
		
		/**
		 * @return the title
		 */
		public String getTitle() {
			return title;
		}
		/**
		 * @param title the title to set
		 */
		public void setTitle(String title) {
			this.title = title;
		}
		/**
		 * @return the price
		 */
		public int getPrice() {
			return price;
		}
		/**
		 * @param price the price to set
		 */
		public void setPrice(int price) {
			this.price = price;
		}
		/**
		 * @return the money
		 */
		public int getMoney() {
			return money;
		}
		/**
		 * @param money the money to set
		 */
		public void setMoney(int money) {
			this.money = money;
		}
		/**
		 * @return the amount
		 */
		public int getAmount() {
			return amount;
		}
		/**
		 * @param amount the amount to set
		 */
		public void setAmount(int amount) {
			this.amount = amount;
		}
	    
	    
		
	    
	
	    
}
