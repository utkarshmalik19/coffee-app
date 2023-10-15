package com.project.coffeeapp.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.coffeeapp.pojo.CoffeeOrder;

public interface CoffeeOrderRepository extends JpaRepository<CoffeeOrder, Integer> {
    // ... custom methods if needed
}