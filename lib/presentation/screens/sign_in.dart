import 'package:coffee_app/presentation/widgets/custom_button.dart';
import 'package:coffee_app/presentation/widgets/custom_scaffold.dart';
import 'package:coffee_app/services/coffee_api.dart';
import 'package:coffee_app/utils/consts.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Please login to your account',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text("Name",style: TextStyle(color: AppConstants.brown, fontSize: 14),),
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                CoffeeApiService.searchCoffee();
                // Handle Forgot Password
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            CustomButton(
              buttonColor: AppConstants.darkBrown,
              onPressed: () {
                // Handle Sign In
                Navigator.pushNamed(context, '/home');
              },
              buttonText: "Sign In",
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // Handle Google sign in
                  },
                  icon: Icon(Icons.golf_course),
                ),
                IconButton(
                  onPressed: () {
                    // Handle Facebook sign in
                  },
                  icon: Icon(Icons.facebook),
                ),
                IconButton(
                  onPressed: () {
                    // Handle Instagram sign in
                  },
                  icon: Icon(Icons.social_distance),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                // Handle Sign Up
                Navigator.pushNamed(context, '/signup');
              },
              child: Text(
                "Don't have an account? Sign up",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
