import 'package:coffee_app/presentation/widgets/custom_button.dart';
import 'package:coffee_app/utils/consts.dart';
import 'package:flutter/material.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data for demonstration purposes
    final List<CartItem> items = [
      CartItem(name: 'Coffee', price: 3.50),
      CartItem(name: 'Hot Tea', price: 2.00),
      CartItem(name: 'Pastry', price: 2.50),
    ];

    final double totalAmount = items.fold(0, (sum, item) => sum + item.price);

    return Scaffold(
      backgroundColor: AppConstants.bgColor,
      appBar: AppBar(
        backgroundColor: AppConstants.bgColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Wallet',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                color: AppConstants.orange,
                elevation: 4,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Your total is \n\$${totalAmount.toStringAsFixed(1)}',
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppConstants.darkBrown),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: Text(
                'Order Details',
                style: AppConstants.headerTextStyle,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length + 1,
                itemBuilder: (context, index) {
                  return index != items.length
                      ? Row(
                          children: [
                            Text(
                              items[index].name,
                              style: AppConstants.smallTextStyle,
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            Text(
                              "500",
                              style: AppConstants.smallTextStyle,
                            )
                          ],
                        )
                      : Row(
                          children: [
                            Text("Total"),
                            SizedBox(
                              width: 140,
                            ),
                            Text("1000")
                          ],
                        );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
                  buttonText: 'Proceed to Pay',
                  onPressed: () {
                    Navigator.of(context).pushNamed('/payments');
                  },
                  buttonColor: AppConstants.darkBrown),
            )
          ],
        ),
      ),
    );
  }
}

class CartItem {
  final String name;
  final double price;

  CartItem({required this.name, required this.price});
}
