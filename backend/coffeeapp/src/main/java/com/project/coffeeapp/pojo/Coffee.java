package com.project.coffeeapp.pojo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Coffee {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int productId;
private String name;
private byte[] image;
@Column(columnDefinition = "TEXT")
private String description;
private int price;
private double rating;


public Coffee() {
	super();
	// TODO Auto-generated constructor stub
}
public Coffee(int productId, String name, byte[] image, String description, int price, double rating) {
	super();
	this.productId = productId;
	this.name = name;
	this.image = image;
	this.description = description;
	this.price = price;
	this.rating = rating;
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
public byte[] getImage() {
	return image;
}
public void setImage(byte[] image) {
	this.image = image;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public double getRating() {
	return rating;
}
public void setRating(double rating) {
	this.rating = rating;
}


}
