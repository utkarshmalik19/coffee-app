package com.project.coffeeapp.pojo;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
@Entity
public class CoffeeOrder {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;
private int productId;
private int quantity;
private String size;
private List<String> toppings;
}
