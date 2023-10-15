import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sample user data for demonstration purposes
    final UserData user = UserData(
      name: 'John Doe',
      age: 30,
      gender: 'Male',
      email: 'johndoe@example.com',
      favoriteCoffee: 'Cappuccino',
      // Add your image URL or asset path here
      image: 'assets/images/coffee.png',
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(user.image),
            ),
            SizedBox(height: 16),
            Text(
              user.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Age: ${user.age}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Gender: ${user.gender}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Email: ${user.email}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Favorite Coffee: ${user.favoriteCoffee}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class UserData {
  final String name;
  final int age;
  final String gender;
  final String email;
  final String favoriteCoffee;
  final String image;

  UserData({
    required this.name,
    required this.age,
    required this.gender,
    required this.email,
    required this.favoriteCoffee,
    required this.image,
  });
}
