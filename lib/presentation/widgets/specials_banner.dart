import 'package:coffee_app/utils/consts.dart';
import 'package:flutter/material.dart';

class SpecialsBanner extends StatelessWidget {
  const SpecialsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppConstants.brown,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Today's Specials",
              style: AppConstants.headerTextStyle,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Pumpkin Latte",
                      style: AppConstants.bigTextStyle,
                    ),
                    Text(
                      "It is a very special coffee \n and you need to try it",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                ),
                SizedBox(
                    height: 140,
                    width: 150,
                    child: Image.network(
                        'https://media.istockphoto.com/id/1442009345/photo/mocha-with-latte-art-served-in-a-cup-isolated-on-dark-grey-background-top-view-of-hot-coffee.jpg?s=1024x1024&w=is&k=20&c=1JI_CjlEneQui-NG4Jr_El-qwXcJUOZPjBbXCF4B9Ug='))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
