
import 'package:flutter/material.dart';

class CartItemTile extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final int time;
  final double rating;
  final VoidCallback onRemove;

  CartItemTile({
    required this.image,
    required this.name,
    required this.description,
    required this.onRemove, required this.time, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
      tileColor: Colors.white30,
      leading: Image.asset(
        image,
        width: 60,
        height: 60,
        fit: BoxFit.cover,
      ),
      title: Text(name),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(description),
        Row(
          children: [
            Icon(Icons.watch),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text("$time min"),
            ),
            Icon(Icons.star, color: Colors.amber,),
            Text("$rating"),
          ],
        )
      ],),
      trailing: IconButton(
        icon: Icon(Icons.clear),
        onPressed: onRemove,
      ),
    );
  }
}
