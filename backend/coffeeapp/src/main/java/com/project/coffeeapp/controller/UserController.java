package com.project.coffeeapp.controller;

import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.coffeeapp.pojo.User;
import com.project.coffeeapp.services.UserServices;

@RestController
public class UserController {
private UserServices userServices;

public UserController(UserServices userServices) {
	this.userServices = userServices;
}
@PostMapping("/login")
public ResponseEntity<String> loginUser(@RequestBody Map<String, String> loginRequest){
String email = loginRequest.get("email");
String password = loginRequest.get("password");
boolean isAuthenticated = userServices.authenticateUser(email, password);
if(isAuthenticated) {
	return ResponseEntity.status(HttpStatus.CREATED).body("{\"message\": \"User Authenticated\"}");
}else {
	return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("{\"message\": \"Invalid Credentials\"}");
}
}

@PostMapping("/register")
public ResponseEntity<String> registerUser(@RequestBody User user){
	userServices.registerUser(user);
	return ResponseEntity.status(HttpStatus.CREATED).body("{\"message\": \"User Registered\"}");
}
}
