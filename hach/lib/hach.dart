import 'package:flutter/material.dart';

class MyHachButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MyHachButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
