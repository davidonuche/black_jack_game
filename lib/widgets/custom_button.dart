import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final void Function() onPressed;
  final String label;
  const CustomButton({super.key, required this.onPressed, required this.label});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      color: Colors.brown[200],
      child: Text(widget.label),
    );
  }
}
