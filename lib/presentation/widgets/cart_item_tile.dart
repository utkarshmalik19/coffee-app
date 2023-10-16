
import 'package:coffee_app/utils/consts.dart';
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
      tileColor: AppConstants.orange,
      leading: Image.asset(
        image,
        width: 60,
        height: 60,
        fit: BoxFit.cover,
      ),
      title: Text(name, style: const TextStyle(color: AppConstants.darkBrown),),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(description, style: const TextStyle(color: AppConstants.brown),),
        Row(
          children: [
            const Icon(Icons.watch, color: AppConstants.brown,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text("$time min", style: const TextStyle(color: AppConstants.brown),),
            ),
            const Icon(Icons.star, color: Colors.amber,),
            Text("$rating", style: const TextStyle(color: AppConstants.brown),),
          ],
        )
      ],),
      trailing: IconButton(
        icon: const Icon(Icons.clear, color: AppConstants.brown,),
        onPressed: onRemove,
      ),
    );
  }
}
