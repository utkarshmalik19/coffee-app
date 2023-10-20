import 'package:coffee_app/models/order_details.dart';
import 'package:coffee_app/presentation/screens/cart_page.dart';
import 'package:coffee_app/presentation/screens/home_screen.dart';
import 'package:coffee_app/presentation/screens/item_detaills_page.dart';
import 'package:coffee_app/presentation/screens/payments_page.dart';
import 'package:coffee_app/presentation/screens/profile_page.dart';
import 'package:coffee_app/presentation/screens/sign_up.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    
    //final orderArgs = ModalRoute.of(context)!.settings.arguments as OrderDetails;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case '/home':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(
              //data: args,   for passing data
              ),
        );

      case '/item_details':
        return MaterialPageRoute(
          builder: (_) => ItemDetailsPage(index: args,),
        );
        case '/cart_page':
        return MaterialPageRoute(
          builder: (_) => CartPage(order: args,),
        );
        case '/payments':
        return MaterialPageRoute(
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
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}