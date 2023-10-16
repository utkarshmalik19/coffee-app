import 'package:coffee_app/utils/consts.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final Widget bottomNavbar;
  const CustomScaffold({super.key, 
    required this.body,
    required this.bottomNavbar,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.bgColor,
      body: SafeArea(
        child: body,
      ),
      bottomNavigationBar: bottomNavbar,
    );
  }
}
