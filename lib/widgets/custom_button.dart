import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {

  final void Function() onPressed;

  final String label;
  
  CustomButton({super.key, required this.onPressed, required this.label});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(label),
      color: Colors.brown[200],
    );
  }
}
