import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final Color contentColor;
  final VoidCallback onTap;

  const CalculatorButton({
    Key? key,
    required this.label,
    required this.contentColor,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: Colors.white.withOpacity(0.6),
      elevation: 0.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: contentColor,
          fontSize: 28.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}