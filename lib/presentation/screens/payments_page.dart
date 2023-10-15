import 'package:coffee_app/presentation/widgets/custom_button.dart';
import 'package:coffee_app/utils/consts.dart';
import 'package:flutter/material.dart';

class PaymentsPage extends StatelessWidget {
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
      appBar: AppBar(
        backgroundColor: Color(0xfffffcfc),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: AppConstants.brown,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Wallet', style: TextStyle(color: AppConstants.brown),),
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
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Order Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: items.length+1,
                itemBuilder: (context, index) {
                  return index != items.length ?Row(
                    children: [
                      Text(items[index].name),
                      SizedBox(
                        width: 140,
                      ),
                      Text("500")
                    ],
                  ): Row(
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
