package com.project.coffeeapp.pojo;

import java.util.List;

public class CoffeeOrderRequest {
	private int productId;
	private int quantity;
	private String size;
	private List<String> toppings;
	
	
	public CoffeeOrderRequest(int productId, int quantity, String size, List<String> toppings) {
		super();
		this.productId = productId;
		this.quantity = quantity;
		this.size = size;
		this.toppings = toppings;
	}
	
	public CoffeeOrderRequest() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public List<String> getToppings() {
		return toppings;
	}
	public void setToppings(List<String> toppings) {
		this.toppings = toppings;
	}
	
	
}
