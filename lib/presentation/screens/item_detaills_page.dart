import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/models/order_details.dart';
import 'package:coffee_app/presentation/widgets/bottom_navbar.dart';
import 'package:coffee_app/presentation/widgets/custom_button.dart';
import 'package:coffee_app/presentation/widgets/custom_scaffold.dart';
import 'package:coffee_app/services/coffee_api.dart';
import 'package:coffee_app/utils/consts.dart';
import 'package:flutter/material.dart';

class ItemDetailsPage extends StatefulWidget {
  final Object? index;
  const ItemDetailsPage({super.key, required this.index});

  @override
  _ItemDetailsPageState createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  String coffeeName = 'a';
  int quantity = 1;
  String selectedSize = 'Small';
  List<String> selectedToppings = [];
  List<Coffee> coffeeList = [];

  void _incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (quantity > 1) {
        quantity--;
      }
    });
  }

  void _onSizeSelected(String? size) {
    setState(() {
      selectedSize = size ?? '';
    });
  }

  void _onToppingSelected(String topping, bool selected) {
    setState(() {
      if (selected) {
        selectedToppings.add(topping);
      } else {
        selectedToppings.remove(topping);
      }
    });
  }

  getCoffeeDetails() async {
    try {
      List<Coffee> data = await CoffeeApiService.getAllCoffee();
      
      setState(() {
        coffeeList = data;
      });
    } catch (e) {
      print('Error fetching coffee: $e');
    }
  }
   getItemName() async{
    int id = widget.index as int;
    try{
      Coffee data = await CoffeeApiService.getCoffeeById(id);
      setState(() {
        coffeeName = data.name;
      });
    }catch(e){

    }
  }

  @override
  void initState() {
    super.initState();
    getCoffeeDetails();
    getItemName();
  }

  @override
  Widget build(BuildContext context) {
    int itemIndex = widget.index as int;
    return CustomScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('This is name $coffeeName'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Image.asset(
                'assets/images/coffee.png',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              children: [
                coffeeList.length > 1
                    ? Text(
                        coffeeList[itemIndex].name,
                        style: AppConstants.headerTextStyle,
                        //Write better error handling
                      )
                    : const Text('Error in title'),
                const Spacer(),
                IconButton(
                  icon: const Icon(
                    Icons.remove,
                    color: AppConstants.orange,
                  ),
                  onPressed: _decrementQuantity,
                ),
                Text(
                  '$quantity',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: AppConstants.orange,
                  ),
                  onPressed: _incrementQuantity,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Size',
              style: AppConstants.bigTextStyle,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Radio<String>(
                  activeColor: AppConstants.orange,
                  value: 'Small',
                  groupValue: selectedSize,
                  onChanged: _onSizeSelected,
                ),
                const Text(
                  'Small',
                  style: TextStyle(color: Colors.white),
                ),
                Radio<String>(
                  value: 'Medium',
                  activeColor: AppConstants.orange,
                  groupValue: selectedSize,
                  onChanged: _onSizeSelected,
                ),
                const Text('Medium', style: TextStyle(color: Colors.white)),
                Radio<String>(
                  value: 'Large',
                  activeColor: AppConstants.orange,
                  groupValue: selectedSize,
                  onChanged: _onSizeSelected,
                ),
                const Text('Large', style: TextStyle(color: Colors.white)),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Description',
              style: AppConstants.bigTextStyle,
            ),
            const SizedBox(height: 8),
            coffeeList.length > 1
                ? Text(
                    coffeeList[itemIndex].description,
                    style: AppConstants.smallTextStyle,
                  )
                : const Text('Error in description'),
            const SizedBox(height: 16),
            Text(
              'Add Toppings',
              style: AppConstants.bigTextStyle,
            ),
            const SizedBox(height: 8),
            CheckboxListTile(
              activeColor: AppConstants.orange,
              title: Text(
                'Topping 1',
                style: AppConstants.smallTextStyle,
              ),
              value: selectedToppings.contains('Topping 1'),
              onChanged: (selected) =>
                  _onToppingSelected('Topping 1', selected ?? false),
            ),
            CheckboxListTile(
              activeColor: AppConstants.orange,
              title: Text('Topping 2', style: AppConstants.smallTextStyle),
              value: selectedToppings.contains('Topping 2'),
              onChanged: (selected) =>
                  _onToppingSelected('Topping 2', selected ?? false),
            ),
            CheckboxListTile(
              activeColor: AppConstants.orange,
              title: Text('Topping 3', style: AppConstants.smallTextStyle),
              value: selectedToppings.contains('Topping 3'),
              onChanged: (selected) =>
                  _onToppingSelected('Topping 3', selected ?? false),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: CustomButton(
                onPressed: () {
                  // Add to Cart logic
                  OrderDetails? order;
                  setState(() {
                     order = OrderDetails( id: itemIndex, quantity: quantity, size: selectedSize, toppings: selectedToppings, name: 'hello');
                  });
                 if(order is OrderDetails){
                   Navigator.pushNamed(context, '/cart_page', arguments: order);
                 }
                  print('Add to Cart');
                },
                buttonText: 'Add to Cart',
                buttonColor: AppConstants.brown,
              ),
            ),
          ],
        ),
      ),
      bottomNavbar: const BottomNavBar(),
    );
  }
}
