import 'package:flutter/material.dart';
import 'package:flutter_calculator/calculator_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'OpenSans',
      ),
      home: CalculatorView(),
    );
  }
}