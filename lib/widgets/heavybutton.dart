import 'package:flutter/material.dart';

class HeavyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;

  const HeavyButton({
    Key? key,
    required this.text,
    required this.onPressed, required this.color, required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: color,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 13.0,
          ),
        ),
      ),
    );
  }
}