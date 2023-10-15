import 'package:flutter/material.dart';

class CustomSearchbar extends StatefulWidget {
  const CustomSearchbar({super.key});

  @override
  State<CustomSearchbar> createState() => _CustomSearchbarState();
}

class _CustomSearchbarState extends State<CustomSearchbar> {
  String searchText = '';
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      onChanged: (value) {
        
        setState(() {
          searchText = value;
          print(value);
        });
        
      },
      decoration: const InputDecoration(
        hintText: 'Search...',
        
        hintStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(Icons.search,color: Colors.white,),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        
      ),
    );
  }
}
