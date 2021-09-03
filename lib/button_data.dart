import 'package:flutter/material.dart';

class ButtonData {
  final String lable;
  final Color textColor;
  final VoidCallback onTap;

  ButtonData({
    required this.lable, 
    required this.textColor, 
    required this.onTap
  });
}