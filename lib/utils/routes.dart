import 'package:coffee_app/presentation/screens/cart_page.dart';
import 'package:coffee_app/presentation/screens/home_screen.dart';
import 'package:coffee_app/presentation/screens/item_detaills_page.dart';
import 'package:coffee_app/presentation/screens/payments_page.dart';
import 'package:coffee_app/presentation/screens/profile_page.dart';
import 'package:coffee_app/presentation/screens/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case '/home':
        return CupertinoPageRoute(
          builder: (_) => const HomeScreen(
              //data: args,   for passing data
              ),
        );

      case '/item_details':
        return CupertinoPageRoute(
          builder: (_) => ItemDetailsPage(),
        );
        case '/cart_page':
        return CupertinoPageRoute(
          builder: (_) => CartPage(),
        );
        case '/payments':
        return CupertinoPageRoute(
          builder: (_) => PaymentsPage(),
        );
        case '/profile':
        return MaterialPageRoute(
          builder: (_) => ProfilePage(),
        );
        case '/signup':
        return MaterialPageRoute(
          builder: (_) => SignUp(),
        );
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}