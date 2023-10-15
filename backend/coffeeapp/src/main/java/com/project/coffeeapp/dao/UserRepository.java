package com.project.coffeeapp.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.coffeeapp.pojo.User;

public interface UserRepository extends JpaRepository<User, Integer> {
User findByEmail(String email);
}
