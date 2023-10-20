package com.project.coffeeapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.coffeeapp.pojo.Coffee;
import com.project.coffeeapp.services.CoffeeServices;

@RestController
public class CoffeeController {
	private CoffeeServices coffeeServices;

	public CoffeeController(CoffeeServices coffeServices) {
		this.coffeeServices = coffeServices;
	}

	@PostMapping("/coffee/add")
	public ResponseEntity<String> addCoffee(@RequestBody Coffee coffee) {
		coffeeServices.addCoffee(coffee);
		return ResponseEntity.status(HttpStatus.CREATED).body("{\"message\": \"Coffee Added\"}");
	}

	@GetMapping("/coffee/all")
	public ResponseEntity<List<Coffee>> getAllCoffee() {
		List<Coffee> allCoffee = coffeeServices.getAllCoffee();
		return ResponseEntity.ok(allCoffee);
	}
	
	@GetMapping("/coffee/coffeebyname/{name}")
	public ResponseEntity<Coffee> getCoffeeById(@PathVariable String name){
		Coffee coffee = coffeeServices.getCoffeeByName(name);
		System.out.println(coffee.getName());
		return ResponseEntity.ok(coffee);
	}

	@GetMapping("/coffee/search")
	public ResponseEntity<List<Coffee>> searchCoffee(
			@RequestParam(name = "searchValue", required = false) String searchValue) {
		List<Coffee> searchedCoffee;
		if (searchValue != null && !searchValue.trim().isEmpty()) {
			searchedCoffee = coffeeServices.searchCoffee(searchValue);
		} else {
			// If searchValue is not provided or empty, return all coffee.
			searchedCoffee = coffeeServices.getAllCoffee();
		}
		return ResponseEntity.ok(searchedCoffee);
	}

	@PostMapping("/coffee/order")
	public ResponseEntity<String> getCoffeeOrder() {

		return ResponseEntity.status(HttpStatus.CREATED).body("{\"message\": \"Coffee Ordered\"}");
	}
}