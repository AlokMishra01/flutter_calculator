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
      color: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: contentColor,
          fontSize: 24.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}