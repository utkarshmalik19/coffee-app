package com.project.coffeeapp.pojo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class User {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
public int id;
private String email;
private String name;
private String password;


public User(int id, String email, String name, String password) {
	super();
	this.id = id;
	this.email = email;
	this.name = name;
	this.password = password;
}


public User() {
	super();
	// TODO Auto-generated constructor stub
}


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}



}
