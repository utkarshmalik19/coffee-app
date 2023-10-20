import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/models/coffee_item.dart';
import 'package:coffee_app/services/coffee_api.dart';
import 'package:flutter/cupertino.dart';

import 'item_card.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
 List<Coffee> coffeList = [];

  getCoffee() async{
   try{
    List<Coffee> data =  await CoffeeApiService.getAllCoffee();
     setState(() {
       coffeList = data;
    });
   }catch(e){
    print('Error fetching coffee: $e');
   }
   
}
@override
  void initState() {
    super.initState();
    getCoffee();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: coffeList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            final coffeeItem = CoffeeItem(index, coffeList[index].name);
            print('index is $index');
            Navigator.of(context).pushNamed(
                  '/item_details',
                  arguments: coffeeItem
                );
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ItemCard(
              image: 'https://images.unsplash.com/photo-1541167760496-1628856ab772?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1637&q=80',
              name: coffeList[index].name,
              rating: coffeList[index].rating,
              price: coffeList[index].price,
              onPressed: () {
                // Add button callback logic here
                print('Add button pressed');
              },
            ),
          ),
        );
      },
    );
  }
}
