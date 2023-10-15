package com.project.coffeeapp.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.coffeeapp.pojo.Coffee;

public interface CoffeeRepository extends JpaRepository<Coffee, Integer> {
    List<Coffee> findByNameContainingIgnoreCase(String searchValue);

}
