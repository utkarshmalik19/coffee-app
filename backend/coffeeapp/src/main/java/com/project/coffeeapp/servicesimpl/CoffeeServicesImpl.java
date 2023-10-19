package com.project.coffeeapp.servicesimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.coffeeapp.dao.CoffeeRepository;
import com.project.coffeeapp.pojo.Coffee;
import com.project.coffeeapp.services.CoffeeServices;

@Service
public class CoffeeServicesImpl implements CoffeeServices {
CoffeeRepository coffeeRepository;

    @Autowired
	public CoffeeServicesImpl(CoffeeRepository coffeeRepository) {
	this.coffeeRepository = coffeeRepository;
}

	@Override
	public void addCoffee(Coffee coffee) {
		// TODO Auto-generated method stub
		coffeeRepository.save(coffee);
	}

	@Override
	public List<Coffee> searchCoffee(String searchValue) {
		// TODO Auto-generated method stub
		System.out.println("Search value is "+ searchValue);
		List<Coffee> result =  coffeeRepository.findByNameContainingIgnoreCase(searchValue);
		return result;
	}

	@Override
	public List<Coffee> getAllCoffee() {
		// TODO Auto-generated method stub
		return coffeeRepository.findAll();
	}

	@Override
	public Coffee getCoffeeById(int orderId) {
		return coffeeRepository.getCoffeeByProductId(orderId);
		
	}

}
