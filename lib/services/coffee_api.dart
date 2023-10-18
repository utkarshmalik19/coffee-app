import 'dart:convert';

import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/utils/consts.dart';
import 'package:http/http.dart' as http;

class CoffeeApiService {
  static Future<List<Coffee>> searchCoffee() async {
    final response = await http
        .get(Uri.parse('$baseUri/coffee/search?searchValue=Flat White'));

    if (response.statusCode == 200) {
      List<dynamic> coffeeData = jsonDecode(response.body);
      List<Coffee> coffeeList =
          coffeeData.map((json) => Coffee.fromJson(json)).toList();
      for (Coffee coffee in coffeeList) {
        print('Coffee Name: ${coffee.name}');
        print('Price: ${coffee.price}');
      }
      return coffeeList;
    } else {
      throw Exception('Failed to get coffee');
    }
  }

  static Future<List<Coffee>> getAllCoffee() async {
    final response = await http.get(Uri.parse('$baseUri/coffee/all'));
    List<dynamic> coffeeData = jsonDecode(response.body);
    List<Coffee> allCoffee =
        coffeeData.map((json) => Coffee.fromJson(json)).toList();
        for(var coffee in allCoffee){
          print(coffee.name);
        }
    return allCoffee;
  }
}
