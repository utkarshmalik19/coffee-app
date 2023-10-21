package com.project.coffeeapp.servicesimpl;

import org.springframework.stereotype.Service;

import com.project.coffeeapp.dao.CoffeeOrderRepository;
import com.project.coffeeapp.pojo.CoffeeOrder;
import com.project.coffeeapp.services.CoffeeOrderServices;

@Service
public class CoffeeOrderServicesImpl implements CoffeeOrderServices {
	CoffeeOrderRepository coffeeOrderRepository;

	public CoffeeOrderServicesImpl(CoffeeOrderRepository coffeeOrderRepository) {
		this.coffeeOrderRepository = coffeeOrderRepository;
	}

	@Override
	public void addCoffeeOrder(CoffeeOrder coffeeOrder) {

		coffeeOrderRepository.save(coffeeOrder);
	}

	@Override
	public void deleteCoffeeOrder(int id) {
		coffeeOrderRepository.deleteById(id);
	}

}
