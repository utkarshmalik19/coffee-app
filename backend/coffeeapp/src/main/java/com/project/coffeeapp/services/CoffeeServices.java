package com.project.coffeeapp.services;

import java.util.List;

import com.project.coffeeapp.pojo.Coffee;

public interface CoffeeServices {
void addCoffee(Coffee coffee);
List<Coffee> getAllCoffee();
List<Coffee> searchCoffee(String searchValue);
}
