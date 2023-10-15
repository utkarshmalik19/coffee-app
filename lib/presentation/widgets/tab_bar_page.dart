import 'package:flutter/cupertino.dart';

import 'item_card.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(
                    '/item_details',
                  );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ItemCard(
                image: 'https://images.unsplash.com/photo-1541167760496-1628856ab772?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1637&q=80',
                name: 'Pumpkin Latte',
                rating: 4.5,
                price: 19.99,
                onPressed: () {
                  // Add button callback logic here
                  print('Add button pressed');
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
