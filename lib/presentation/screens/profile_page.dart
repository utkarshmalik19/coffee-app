import 'package:coffee_app/utils/consts.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
      backgroundColor: AppConstants.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppConstants.bgColor,
        title: Text('Profile', style: AppConstants.headerTextStyle,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: AppConstants.orange,
              radius: 80,
              backgroundImage: AssetImage(user.image),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: Text(
                user.name,
                style: AppConstants.headerTextStyle,
              ),
            ),
            Text(
              'Age: ${user.age}',
              style: AppConstants.smallTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                'Gender: ${user.gender}',
                style: AppConstants.smallTextStyle,
              ),
            ),
            Text(
              'Email: ${user.email}',
              style: AppConstants.smallTextStyle,
            ),
            const SizedBox(height: 8),
            Text(
              'Favorite Coffee: ${user.favoriteCoffee}',
              style: AppConstants.smallTextStyle,
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
