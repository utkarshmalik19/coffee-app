package com.project.coffeeapp.servicesimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.coffeeapp.dao.CoffeeOrderRepository;
import com.project.coffeeapp.pojo.CoffeeOrder;
import com.project.coffeeapp.services.CoffeeOrderServices;

@Service
public class CoffeeOrderServicesImpl implements CoffeeOrderServices {
CoffeeOrderRepository coffeeOrderRepository;
    @Autowired
	public CoffeeOrderServicesImpl(CoffeeOrderRepository coffeeOrderRepository) {
	this.coffeeOrderRepository = coffeeOrderRepository;
}

	@Override
	public void addCoffee(CoffeeOrder coffeeOrder) {
		// TODO Auto-generated method stub
		coffeeOrderRepository.save(coffeeOrder);
	}

}
