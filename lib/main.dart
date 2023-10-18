import 'package:coffee_app/presentation/screens/home_screen.dart';
import 'package:coffee_app/presentation/screens/sign_in.dart';
import 'package:coffee_app/utils/consts.dart';
import 'package:coffee_app/utils/routes.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      
      home:  const SignIn(),
    );
  }
}