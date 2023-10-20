import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/models/order_details.dart';
import 'package:coffee_app/presentation/widgets/cart_item_tile.dart';
import 'package:coffee_app/presentation/widgets/custom_button.dart';
import 'package:coffee_app/services/coffee_api.dart';
import 'package:coffee_app/utils/consts.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  final Object? order;
  const CartPage({super.key, required this.order});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<OrderDetails> item = [];
  String coffeeName = 'a';

  // Adding order to cart
  void addItemsToCart() {
    OrderDetails addOrder = widget.order as OrderDetails;
    item.add(addOrder);
  }

  getItemName() async {
    OrderDetails myOrder = widget.order as OrderDetails;
    String name = myOrder.name;

    try {
      Coffee data = await CoffeeApiService.getCoffeeByName(name);
      setState(() {
        coffeeName = data.name;
        print('Name of coffee ahshs is $coffeeName');
      });
    } catch (e) {}
  }

  @override
  void initState() {
    super.initState();
    getItemName();
    addItemsToCart();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.bgColor,
      appBar: AppBar(
        backgroundColor: AppConstants.bgColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Orders',
              style: AppConstants.headerTextStyle,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount:
                  item.length, // Replace this with the actual number of items in the cart
              itemBuilder: (context, index) {
                var myOrder = widget.order as OrderDetails;
                return Padding(
                  padding:
                      const EdgeInsets.only(bottom: 12, left: 10, right: 16),
                  child: CartItemTile(
                    image:
                        'assets/images/coffee.png', // Replace this with the actual image URL or asset path
                    name: myOrder
                        .name, // Replace this with the actual coffee name
                    time: 30,
                    rating: 4,
                    description:
                        'Description $index', // Replace this with the actual description
                    onRemove: () {
                      // Implement the logic to remove the item from the cart
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(
                buttonText: 'Place Order',
                onPressed: () {
                  Navigator.of(context).pushNamed('/payments');
                },
                buttonColor: AppConstants.darkBrown),
          )
        ],
      ),
    );
  }
}
