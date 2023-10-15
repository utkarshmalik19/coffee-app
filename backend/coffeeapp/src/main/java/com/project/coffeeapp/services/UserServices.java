package com.project.coffeeapp.services;

import com.project.coffeeapp.pojo.User;

public interface UserServices {
void registerUser(User user);
boolean authenticateUser(String email, String password);
User getUserByEmail(String email);
}
