package com.project.coffeeapp.services;

import com.project.coffeeapp.pojo.CoffeeOrder;

public interface CoffeeOrderServices {
	void addCoffeeOrder(CoffeeOrder coffeeOrder);
	void deleteCoffeeOrder(int id);
}
