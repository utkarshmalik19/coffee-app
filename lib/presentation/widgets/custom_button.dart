import 'package:coffee_app/utils/consts.dart';
import 'package:flutter/material.dart';


//App constants included so keep in mind
class CustomButton extends StatelessWidget {
final Function()? onPressed;
  final String buttonText;
  final Color buttonColor;
  const CustomButton({super.key, required this.buttonText, required this.onPressed, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
      //For Rounded Border
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              //For giving border color
              side: BorderSide(color: AppConstants.brown)),
      //For Specifying Size
          minimumSize: Size(300, 50),
          backgroundColor: buttonColor),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
    );
  }
}