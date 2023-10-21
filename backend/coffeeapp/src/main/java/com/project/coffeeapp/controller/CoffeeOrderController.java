package com.project.coffeeapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.coffeeapp.pojo.CoffeeOrder;
import com.project.coffeeapp.services.CoffeeOrderServices;

@RestController
public class CoffeeOrderController {

	@Autowired
	private CoffeeOrderServices coffeeOrderServices;
	
	@PostMapping("/order/add")
	public ResponseEntity<String> addOrder(@RequestBody CoffeeOrder coffeeOrder){
		coffeeOrderServices.addCoffeeOrder(coffeeOrder);
		return ResponseEntity.status(HttpStatus.CREATED).body("{\"message\": \"Coffee Added\"}");
		
	}
	

}