package com.project.coffeeapp.pojo;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
@Entity
public class CoffeeOrder {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;
private int productId;
private String name;
private int deliveryTime;
private double rating;
private byte[] itemImage;
private int quantity;
private String size;
private List<String> toppings;


public CoffeeOrder() {
	super();
	// TODO Auto-generated constructor stub
}
public CoffeeOrder(int id, int productId, String name, int deliveryTime, double rating, byte[] itemImage, int quantity,
		String size, List<String> toppings) {
	super();
	this.id = id;
	this.productId = productId;
	this.name = name;
	this.deliveryTime = deliveryTime;
	this.rating = rating;
	this.itemImage = itemImage;
	this.quantity = quantity;
	this.size = size;
	this.toppings = toppings;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getProductId() {
	return productId;
}
public void setProductId(int productId) {
	this.productId = productId;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getDeliveryTime() {
	return deliveryTime;
}
public void setDeliveryTime(int deliveryTime) {
	this.deliveryTime = deliveryTime;
}
public double getRating() {
	return rating;
}
public void setRating(double rating) {
	this.rating = rating;
}
public byte[] getItemImage() {
	return itemImage;
}
public void setItemImage(byte[] itemImage) {
	this.itemImage = itemImage;
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
